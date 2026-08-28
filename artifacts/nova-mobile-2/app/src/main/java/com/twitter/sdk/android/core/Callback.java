package com.twitter.sdk.android.core;

import rd.b;
import rd.d;
import rd.q;

/* loaded from: classes.dex */
public abstract class Callback<T> implements d<T> {
    public abstract void failure(TwitterException twitterException);

    @Override // rd.d
    public final void onFailure(b<T> bVar, Throwable th) {
        failure(new TwitterException("Request Failure", th));
    }

    @Override // rd.d
    public final void onResponse(b<T> bVar, q<T> qVar) {
        if (qVar.f()) {
            success(new Result<>(qVar.a(), qVar));
        } else {
            failure(new TwitterApiException(qVar));
        }
    }

    public abstract void success(Result<T> result);
}
