.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzsh;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzsh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzse;

    const/16 v1, 0x3d

    .line 2
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzse;

    const-string v2, "base64Url()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 3
    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;

    const-string v2, "base32()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 4
    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsg;

    const-string v2, "base32Hex()"

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 5
    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 6
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzsd;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzsd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzsh;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsh;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzk()Lcom/google/ads/interactivemedia/v3/internal/zzsh;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzsh;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzsh;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Appendable;[BII)V
.end method

.method abstract zzb([BLjava/lang/CharSequence;)I
.end method

.method abstract zzd(I)I
.end method

.method abstract zzf(I)I
.end method

.method zzg(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    const/4 p1, 0x0

    throw p1
.end method

.method public abstract zzh()Lcom/google/ads/interactivemedia/v3/internal/zzsh;
.end method

.method public final zzi([BII)Ljava/lang/String;
    .locals 2

    .line 1
    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {v0, p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzpn;->zzi(III)V

    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzsh;->zzd(I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    :try_start_0
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzsh;->zza(Ljava/lang/Appendable;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/AssertionError;

    .line 4
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public final zzj(Ljava/lang/CharSequence;)[B
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsh;->zzg(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzsh;->zzf(I)I

    move-result v0

    new-array v1, v0, [B

    .line 3
    invoke-virtual {p0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzsh;->zzb([BLjava/lang/CharSequence;)I

    move-result p1

    if-ne p1, v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzsf; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
