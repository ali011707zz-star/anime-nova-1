.class public abstract Lcom/github/pwittchen/reactivenetwork/library/rx2/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isAtLeastAndroidLollipop()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastAndroidMarshmallow()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method
