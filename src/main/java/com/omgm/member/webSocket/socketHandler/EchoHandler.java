package com.omgm.member.webSocket.socketHandler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.util.ArrayList;
import java.util.List;

public class EchoHandler extends TextWebSocketHandler {
    private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
    private static Logger logger = LoggerFactory.getLogger(EchoHandler.class);

    // 클라이언트 연결 후
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        sessionList.add(session);
        logger.info("{} 접속", session.getId());
        System.out.println("입장"+session.getPrincipal().getName());
    }

    // 웹 소켓 서버로 데이터를 전송했을 경우
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        for(WebSocketSession wss : sessionList) {
            wss.sendMessage(new TextMessage(session.getPrincipal().getName()+ "|" + message.getPayload()));
        }
    }

    // 클라이언트와 연결이 끊어진 경우
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        sessionList.remove(session);
        System.out.println("퇴장"+session.getPrincipal().getName());
    }
}
