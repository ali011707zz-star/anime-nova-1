.class public interface abstract Lcom/google/firebase/installations/FirebaseInstallationsApi;
.super Ljava/lang/Object;
.source "FirebaseInstallationsApi.java"


# virtual methods
.method public abstract delete()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task;"
        }
    .end annotation
.end method

.method public abstract getId()Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task;"
        }
    .end annotation
.end method

.method public abstract getToken(Z)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task;"
        }
    .end annotation
.end method

.method public abstract registerFidListener(Lcom/google/firebase/installations/internal/FidListener;)Lcom/google/firebase/installations/internal/FidListenerHandle;
    .annotation build Lcom/google/firebase/annotations/DeferredApi;
    .end annotation
.end method
