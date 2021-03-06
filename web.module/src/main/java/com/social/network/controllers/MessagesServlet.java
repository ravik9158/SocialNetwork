package com.social.network.controllers;

import com.social.network.dao.MessagesDao;
import com.social.network.models.Message;
import com.social.network.models.User;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static com.social.network.utils.ServerUtils.getUserFromSession;

public class MessagesServlet extends HttpServlet {
    private static final Logger logger = Logger.getLogger(MessagesServlet.class);
    private static final String USER_WITH_REQUESTED_HIS_MESSAGES = "User with id=%s requested his messages";

    private MessagesDao messagesDao;

    @Override
    public void init() throws ServletException {
        messagesDao = (MessagesDao) getServletContext().getAttribute("messagesDao");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = getUserFromSession(req);
        int userId = user.getId();
        logger.info(String.format(USER_WITH_REQUESTED_HIS_MESSAGES, userId));

        List<Message> recentMessages = messagesDao.getRecentMessages(userId);
        recentMessages = recentMessages.stream()
                .sorted(Comparator.comparing(Message::getId))
                .collect(Collectors.toList());

        Map<Integer, Message> filteredMessages = new HashMap<>();
        recentMessages.forEach(m -> {
            int companion = setCompanionToMessage(userId, m);
            filteredMessages.put(companion, m);
        });

        req.setAttribute("recentMessages", filteredMessages.values());
        req.getRequestDispatcher("messages.jsp").forward(req, resp);
    }

    static int setCompanionToMessage(int userId, Message m) {
        int companion;
        if (m.getSender().getId() == userId) {
            companion = m.getReceiver().getId();
        } else {
            companion = m.getSender().getId();
        }
        m.setCompanion(companion);
        return companion;
    }
}
