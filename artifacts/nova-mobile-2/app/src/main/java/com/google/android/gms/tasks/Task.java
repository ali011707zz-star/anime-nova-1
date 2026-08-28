package com.google.android.gms.tasks;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-tasks@@17.2.1 */
/* loaded from: classes.dex */
public abstract class Task<TResult> {
    public Task<TResult> addOnCanceledListener(@RecentlyNonNull Activity activity, @RecentlyNonNull OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented.");
    }

    public Task<TResult> addOnCompleteListener(@RecentlyNonNull Activity activity, @RecentlyNonNull OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public abstract Task<TResult> addOnFailureListener(@RecentlyNonNull Activity activity, @RecentlyNonNull OnFailureListener onFailureListener);

    public abstract Task<TResult> addOnFailureListener(@RecentlyNonNull OnFailureListener onFailureListener);

    public abstract Task<TResult> addOnFailureListener(@RecentlyNonNull Executor executor, @RecentlyNonNull OnFailureListener onFailureListener);

    public abstract Task<TResult> addOnSuccessListener(@RecentlyNonNull Activity activity, @RecentlyNonNull OnSuccessListener<? super TResult> onSuccessListener);

    public abstract Task<TResult> addOnSuccessListener(@RecentlyNonNull OnSuccessListener<? super TResult> onSuccessListener);

    public abstract Task<TResult> addOnSuccessListener(@RecentlyNonNull Executor executor, @RecentlyNonNull OnSuccessListener<? super TResult> onSuccessListener);

    public <TContinuationResult> Task<TContinuationResult> continueWith(@RecentlyNonNull Continuation<TResult, TContinuationResult> continuation) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public <TContinuationResult> Task<TContinuationResult> continueWithTask(@RecentlyNonNull Continuation<TResult, Task<TContinuationResult>> continuation) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    @RecentlyNullable
    public abstract Exception getException();

    @RecentlyNonNull
    public abstract TResult getResult();

    @RecentlyNonNull
    public abstract <X extends Throwable> TResult getResult(@RecentlyNonNull Class<X> cls) throws Throwable;

    public abstract boolean isCanceled();

    public abstract boolean isComplete();

    public abstract boolean isSuccessful();

    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(@RecentlyNonNull SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    public Task<TResult> addOnCanceledListener(@RecentlyNonNull OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented.");
    }

    public Task<TResult> addOnCompleteListener(@RecentlyNonNull OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public <TContinuationResult> Task<TContinuationResult> continueWith(@RecentlyNonNull Executor executor, @RecentlyNonNull Continuation<TResult, TContinuationResult> continuation) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public <TContinuationResult> Task<TContinuationResult> continueWithTask(@RecentlyNonNull Executor executor, @RecentlyNonNull Continuation<TResult, Task<TContinuationResult>> continuation) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    public <TContinuationResult> Task<TContinuationResult> onSuccessTask(@RecentlyNonNull Executor executor, @RecentlyNonNull SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    public Task<TResult> addOnCanceledListener(@RecentlyNonNull Executor executor, @RecentlyNonNull OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    public Task<TResult> addOnCompleteListener(@RecentlyNonNull Executor executor, @RecentlyNonNull OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }
}
