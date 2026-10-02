package org.apache.http.protocol;

import java.io.IOException;
import java.net.ProtocolException;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolVersion;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.params.CoreProtocolPNames;

/* loaded from: classes2.dex */
public class HttpRequestExecutor {
    private static final void closeConnection(HttpClientConnection httpClientConnection) {
        try {
            httpClientConnection.close();
        } catch (IOException unused) {
        }
    }

    public boolean canResponseHaveBody(HttpRequest httpRequest, HttpResponse httpResponse) {
        int statusCode;
        return (HttpHead.METHOD_NAME.equalsIgnoreCase(httpRequest.getRequestLine().getMethod()) || (statusCode = httpResponse.getStatusLine().getStatusCode()) < 200 || statusCode == 204 || statusCode == 304 || statusCode == 205) ? false : true;
    }

    public HttpResponse doReceiveResponse(HttpRequest httpRequest, HttpClientConnection httpClientConnection, HttpContext httpContext) throws HttpException, IOException {
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httpClientConnection == null) {
            throw new IllegalArgumentException("HTTP connection may not be null");
        }
        if (httpContext == null) {
            throw new IllegalArgumentException("HTTP context may not be null");
        }
        HttpResponse httpResponse = null;
        int i10 = 0;
        while (true) {
            if (httpResponse != null && i10 >= 200) {
                return httpResponse;
            }
            httpResponse = httpClientConnection.receiveResponseHeader();
            if (canResponseHaveBody(httpRequest, httpResponse)) {
                httpClientConnection.receiveResponseEntity(httpResponse);
            }
            i10 = httpResponse.getStatusLine().getStatusCode();
        }
    }

    public HttpResponse doSendRequest(HttpRequest httpRequest, HttpClientConnection httpClientConnection, HttpContext httpContext) throws IOException, HttpException {
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httpClientConnection == null) {
            throw new IllegalArgumentException("HTTP connection may not be null");
        }
        if (httpContext != null) {
            httpContext.setAttribute(ExecutionContext.HTTP_CONNECTION, httpClientConnection);
            httpContext.setAttribute(ExecutionContext.HTTP_REQ_SENT, Boolean.FALSE);
            httpClientConnection.sendRequestHeader(httpRequest);
            HttpResponse httpResponse = null;
            if (httpRequest instanceof HttpEntityEnclosingRequest) {
                boolean z10 = true;
                ProtocolVersion protocolVersion = httpRequest.getRequestLine().getProtocolVersion();
                HttpEntityEnclosingRequest httpEntityEnclosingRequest = (HttpEntityEnclosingRequest) httpRequest;
                if (httpEntityEnclosingRequest.expectContinue() && !protocolVersion.lessEquals(HttpVersion.HTTP_1_0)) {
                    httpClientConnection.flush();
                    if (httpClientConnection.isResponseAvailable(httpRequest.getParams().getIntParameter(CoreProtocolPNames.WAIT_FOR_CONTINUE, 2000))) {
                        HttpResponse receiveResponseHeader = httpClientConnection.receiveResponseHeader();
                        if (canResponseHaveBody(httpRequest, receiveResponseHeader)) {
                            httpClientConnection.receiveResponseEntity(receiveResponseHeader);
                        }
                        int statusCode = receiveResponseHeader.getStatusLine().getStatusCode();
                        if (statusCode >= 200) {
                            z10 = false;
                            httpResponse = receiveResponseHeader;
                        } else if (statusCode != 100) {
                            StringBuffer stringBuffer = new StringBuffer();
                            stringBuffer.append("Unexpected response: ");
                            stringBuffer.append(receiveResponseHeader.getStatusLine());
                            throw new ProtocolException(stringBuffer.toString());
                        }
                    }
                }
                if (z10) {
                    httpClientConnection.sendRequestEntity(httpEntityEnclosingRequest);
                }
            }
            httpClientConnection.flush();
            httpContext.setAttribute(ExecutionContext.HTTP_REQ_SENT, Boolean.TRUE);
            return httpResponse;
        }
        throw new IllegalArgumentException("HTTP context may not be null");
    }

    public HttpResponse execute(HttpRequest httpRequest, HttpClientConnection httpClientConnection, HttpContext httpContext) throws IOException, HttpException {
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httpClientConnection == null) {
            throw new IllegalArgumentException("Client connection may not be null");
        }
        if (httpContext != null) {
            try {
                HttpResponse doSendRequest = doSendRequest(httpRequest, httpClientConnection, httpContext);
                return doSendRequest == null ? doReceiveResponse(httpRequest, httpClientConnection, httpContext) : doSendRequest;
            } catch (IOException e10) {
                closeConnection(httpClientConnection);
                throw e10;
            } catch (RuntimeException e11) {
                closeConnection(httpClientConnection);
                throw e11;
            } catch (HttpException e12) {
                closeConnection(httpClientConnection);
                throw e12;
            }
        }
        throw new IllegalArgumentException("HTTP context may not be null");
    }

    public void postProcess(HttpResponse httpResponse, HttpProcessor httpProcessor, HttpContext httpContext) throws HttpException, IOException {
        if (httpResponse == null) {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
        if (httpProcessor == null) {
            throw new IllegalArgumentException("HTTP processor may not be null");
        }
        if (httpContext != null) {
            httpContext.setAttribute(ExecutionContext.HTTP_RESPONSE, httpResponse);
            httpProcessor.process(httpResponse, httpContext);
            return;
        }
        throw new IllegalArgumentException("HTTP context may not be null");
    }

    public void preProcess(HttpRequest httpRequest, HttpProcessor httpProcessor, HttpContext httpContext) throws HttpException, IOException {
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httpProcessor == null) {
            throw new IllegalArgumentException("HTTP processor may not be null");
        }
        if (httpContext != null) {
            httpContext.setAttribute(ExecutionContext.HTTP_REQUEST, httpRequest);
            httpProcessor.process(httpRequest, httpContext);
            return;
        }
        throw new IllegalArgumentException("HTTP context may not be null");
    }
}
