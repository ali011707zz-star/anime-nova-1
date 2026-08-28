package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.TwitterApiClient;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.internal.scribe.DefaultScribeClient;
import com.twitter.sdk.android.core.internal.scribe.EventNamespace;
import com.twitter.sdk.android.core.internal.scribe.TwitterCoreScribeClientHolder;
import com.twitter.sdk.android.core.services.AccountService;
import java.io.IOException;

/* loaded from: classes.dex */
public class TwitterSessionVerifier implements SessionVerifier<TwitterSession> {
    public static final String SCRIBE_ACTION = "impression";
    public static final String SCRIBE_CLIENT = "android";
    public static final String SCRIBE_COMPONENT = "";
    public static final String SCRIBE_ELEMENT = "";
    public static final String SCRIBE_PAGE = "credentials";
    public static final String SCRIBE_SECTION = "";
    private final AccountServiceProvider accountServiceProvider;
    private final DefaultScribeClient scribeClient;

    /* loaded from: classes.dex */
    public static class AccountServiceProvider {
        public AccountService getAccountService(TwitterSession twitterSession) {
            return new TwitterApiClient(twitterSession).getAccountService();
        }
    }

    public TwitterSessionVerifier() {
        this.accountServiceProvider = new AccountServiceProvider();
        this.scribeClient = TwitterCoreScribeClientHolder.getScribeClient();
    }

    private void scribeVerifySession() {
        if (this.scribeClient == null) {
            return;
        }
        this.scribeClient.scribe(new EventNamespace.Builder().setClient("android").setPage(SCRIBE_PAGE).setSection("").setComponent("").setElement("").setAction(SCRIBE_ACTION).builder());
    }

    @Override // com.twitter.sdk.android.core.internal.SessionVerifier
    public void verifySession(TwitterSession twitterSession) {
        AccountService accountService = this.accountServiceProvider.getAccountService(twitterSession);
        try {
            scribeVerifySession();
            Boolean bool = Boolean.TRUE;
            Boolean bool2 = Boolean.FALSE;
            accountService.verifyCredentials(bool, bool2, bool2).execute();
        } catch (IOException | RuntimeException unused) {
        }
    }

    public TwitterSessionVerifier(AccountServiceProvider accountServiceProvider, DefaultScribeClient defaultScribeClient) {
        this.accountServiceProvider = accountServiceProvider;
        this.scribeClient = defaultScribeClient;
    }
}
