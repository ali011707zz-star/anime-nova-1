package org.apache.http.impl.auth;

import java.io.IOException;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.InvalidCredentialsException;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.message.BasicHeader;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.CharArrayBuffer;
import org.ietf.jgss.GSSContext;
import org.ietf.jgss.GSSCredential;
import org.ietf.jgss.GSSException;
import org.ietf.jgss.GSSManager;
import org.ietf.jgss.GSSName;
import org.ietf.jgss.Oid;

/* loaded from: classes2.dex */
public class NegotiateScheme extends AuthSchemeBase {
    private static final String KERBEROS_OID = "1.2.840.113554.1.2.2";
    private static final String SPNEGO_OID = "1.3.6.1.5.5.2";
    private GSSContext gssContext;
    private final Log log;
    private Oid negotiationOid;
    private final SpnegoTokenGenerator spengoGenerator;
    private State state;
    private final boolean stripPort;
    private byte[] token;

    /* loaded from: classes2.dex */
    public enum State {
        UNINITIATED,
        CHALLENGE_RECEIVED,
        TOKEN_GENERATED,
        FAILED
    }

    public NegotiateScheme(SpnegoTokenGenerator spnegoTokenGenerator, boolean z10) {
        this.log = LogFactory.getLog(getClass());
        this.gssContext = null;
        this.negotiationOid = null;
        this.state = State.UNINITIATED;
        this.spengoGenerator = spnegoTokenGenerator;
        this.stripPort = z10;
    }

    @Override // org.apache.http.auth.AuthScheme
    @Deprecated
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        return authenticate(credentials, httpRequest, null);
    }

    public GSSManager getManager() {
        return GSSManager.getInstance();
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getParameter(String str) {
        if (str != null) {
            return null;
        }
        throw new IllegalArgumentException("Parameter name may not be null");
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getRealm() {
        return null;
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getSchemeName() {
        return "Negotiate";
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        State state = this.state;
        return state == State.TOKEN_GENERATED || state == State.FAILED;
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isConnectionBased() {
        return true;
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase
    public void parseChallenge(CharArrayBuffer charArrayBuffer, int i10, int i11) throws MalformedChallengeException {
        String substringTrimmed = charArrayBuffer.substringTrimmed(i10, i11);
        if (this.log.isDebugEnabled()) {
            this.log.debug("Received challenge '" + substringTrimmed + "' from the auth server");
        }
        if (this.state == State.UNINITIATED) {
            this.token = new Base64().decode(substringTrimmed.getBytes());
            this.state = State.CHALLENGE_RECEIVED;
        } else {
            this.log.debug("Authentication already attempted");
            this.state = State.FAILED;
        }
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase, org.apache.http.auth.ContextAwareAuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        String hostName;
        boolean z10;
        if (httpRequest != null) {
            if (this.state == State.CHALLENGE_RECEIVED) {
                try {
                    try {
                        HttpHost httpHost = (HttpHost) httpContext.getAttribute(isProxy() ? ExecutionContext.HTTP_PROXY_HOST : ExecutionContext.HTTP_TARGET_HOST);
                        if (httpHost != null) {
                            if (!this.stripPort && httpHost.getPort() > 0) {
                                hostName = httpHost.toHostString();
                            } else {
                                hostName = httpHost.getHostName();
                            }
                            if (this.log.isDebugEnabled()) {
                                this.log.debug("init " + hostName);
                            }
                            this.negotiationOid = new Oid(SPNEGO_OID);
                            try {
                                GSSManager manager = getManager();
                                GSSContext createContext = manager.createContext(manager.createName("HTTP@" + hostName, GSSName.NT_HOSTBASED_SERVICE).canonicalize(this.negotiationOid), this.negotiationOid, (GSSCredential) null, 0);
                                this.gssContext = createContext;
                                createContext.requestMutualAuth(true);
                                this.gssContext.requestCredDeleg(true);
                                z10 = false;
                            } catch (GSSException e10) {
                                if (e10.getMajor() == 2) {
                                    this.log.debug("GSSException BAD_MECH, retry with Kerberos MECH");
                                    z10 = true;
                                } else {
                                    throw e10;
                                }
                            }
                            if (z10) {
                                this.log.debug("Using Kerberos MECH 1.2.840.113554.1.2.2");
                                this.negotiationOid = new Oid(KERBEROS_OID);
                                GSSManager manager2 = getManager();
                                GSSContext createContext2 = manager2.createContext(manager2.createName("HTTP@" + hostName, GSSName.NT_HOSTBASED_SERVICE).canonicalize(this.negotiationOid), this.negotiationOid, (GSSCredential) null, 0);
                                this.gssContext = createContext2;
                                createContext2.requestMutualAuth(true);
                                this.gssContext.requestCredDeleg(true);
                            }
                            if (this.token == null) {
                                this.token = new byte[0];
                            }
                            GSSContext gSSContext = this.gssContext;
                            byte[] bArr = this.token;
                            byte[] initSecContext = gSSContext.initSecContext(bArr, 0, bArr.length);
                            this.token = initSecContext;
                            if (initSecContext != null) {
                                if (this.spengoGenerator != null && this.negotiationOid.toString().equals(KERBEROS_OID)) {
                                    this.token = this.spengoGenerator.generateSpnegoDERObject(this.token);
                                }
                                this.state = State.TOKEN_GENERATED;
                                String str = new String(Base64.encodeBase64(this.token, false));
                                if (this.log.isDebugEnabled()) {
                                    this.log.debug("Sending response '" + str + "' back to the auth server");
                                }
                                return new BasicHeader("Authorization", "Negotiate " + str);
                            }
                            this.state = State.FAILED;
                            throw new AuthenticationException("GSS security context initialization failed");
                        }
                        throw new AuthenticationException("Authentication host is not set in the execution context");
                    } catch (GSSException e11) {
                        this.state = State.FAILED;
                        if (e11.getMajor() != 9 && e11.getMajor() != 8) {
                            if (e11.getMajor() != 13) {
                                if (e11.getMajor() != 10 && e11.getMajor() != 19 && e11.getMajor() != 20) {
                                    throw new AuthenticationException(e11.getMessage());
                                }
                                throw new AuthenticationException(e11.getMessage(), e11);
                            }
                            throw new InvalidCredentialsException(e11.getMessage(), e11);
                        }
                        throw new InvalidCredentialsException(e11.getMessage(), e11);
                    }
                } catch (IOException e12) {
                    this.state = State.FAILED;
                    throw new AuthenticationException(e12.getMessage());
                }
            }
            throw new IllegalStateException("Negotiation authentication process has not been initiated");
        }
        throw new IllegalArgumentException("HTTP request may not be null");
    }

    public NegotiateScheme(SpnegoTokenGenerator spnegoTokenGenerator) {
        this(spnegoTokenGenerator, false);
    }

    public NegotiateScheme() {
        this(null, false);
    }
}
