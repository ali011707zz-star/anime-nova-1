.class public final Lcom/google/android/gms/internal/ads/zzhhh;
.super Lcom/google/android/gms/internal/ads/zzhhe;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhhe;-><init>([BI)V

    return-void
.end method


# virtual methods
.method final zza([II)[I
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    .line 2
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhhe;->zza:[I

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzhhc;->zze([I[I)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhhc;->zza([I[I)V

    const/16 v1, 0xc

    aput p2, v0, v1

    const/16 p2, 0xd

    aput v2, v0, p2

    const/4 p2, 0x4

    .line 4
    aget p2, p1, p2

    const/16 v1, 0xe

    aput p2, v0, v1

    const/4 p2, 0x5

    .line 5
    aget p1, p1, p2

    const/16 p2, 0xf

    aput p1, v0, p2

    return-object v0

    :cond_0
    mul-int/lit8 v0, v0, 0x20

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string p2, "XChaCha20 uses 192-bit nonces, but got a %d-bit nonce"

    .line 2
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzb()I
    .locals 1

    .line 0
    const/16 v0, 0x18

    return v0
.end method
