.class public abstract Lcom/google/android/gms/internal/ads/zzgxa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgxa;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgxa;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgxa;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwx;

    const/16 v1, 0x3d

    .line 2
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxa;->zza:Lcom/google/android/gms/internal/ads/zzgxa;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwx;

    const-string v2, "base64Url()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 3
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgwx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxa;->zzb:Lcom/google/android/gms/internal/ads/zzgxa;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwz;

    const-string v2, "base32()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 4
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgwz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwz;

    const-string v2, "base32Hex()"

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 5
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzgwz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgww;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgww;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgxa;->zzc:Lcom/google/android/gms/internal/ads/zzgxa;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzl()Lcom/google/android/gms/internal/ads/zzgxa;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxa;->zza:Lcom/google/android/gms/internal/ads/zzgxa;

    return-object v0
.end method

.method public static zzm()Lcom/google/android/gms/internal/ads/zzgxa;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxa;->zzb:Lcom/google/android/gms/internal/ads/zzgxa;

    return-object v0
.end method

.method public static zzn()Lcom/google/android/gms/internal/ads/zzgxa;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxa;->zzc:Lcom/google/android/gms/internal/ads/zzgxa;

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

.method abstract zzg(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public abstract zzh()Lcom/google/android/gms/internal/ads/zzgxa;
.end method

.method public abstract zzi()Lcom/google/android/gms/internal/ads/zzgxa;
.end method

.method public final zzj([BII)Ljava/lang/String;
    .locals 2

    .line 1
    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {v0, p3, p2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzo(III)V

    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzgxa;->zzd(I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    :try_start_0
    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzgxa;->zza(Ljava/lang/Appendable;[BII)V
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

.method public final zzk(Ljava/lang/CharSequence;)[B
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgxa;->zzg(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgxa;->zzf(I)I

    move-result v0

    new-array v1, v0, [B

    .line 3
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgxa;->zzb([BLjava/lang/CharSequence;)I

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
    .catch Lcom/google/android/gms/internal/ads/zzgwy; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
