.class public abstract synthetic Lcom/google/android/gms/internal/ads/zzaud$$ExternalSyntheticBackport0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic m(J)I
    .locals 3

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long p0, p0, v1

    if-nez p0, :cond_0

    return v0

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0
.end method
