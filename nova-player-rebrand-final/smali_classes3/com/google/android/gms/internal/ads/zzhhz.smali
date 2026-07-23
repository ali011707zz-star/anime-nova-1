.class public abstract Lcom/google/android/gms/internal/ads/zzhhz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhhx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhz;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhdo;)Lcom/google/android/gms/internal/ads/zzhas;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhhy;->zza:Lcom/google/android/gms/internal/ads/zzhhy;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhdo;Lcom/google/android/gms/internal/ads/zzhgp;)Lcom/google/android/gms/internal/ads/zzhas;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzc()Ljavax/crypto/Cipher;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhhz;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "AES GCM SIV cipher is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "AES GCM SIV cipher is not available or is invalid."

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
