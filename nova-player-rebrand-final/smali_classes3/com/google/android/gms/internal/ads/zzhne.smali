.class public final Lcom/google/android/gms/internal/ads/zzhne;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhlx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhlp;Ljava/security/Provider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    const-string v0, "AESCMAC"

    .line 3
    invoke-static {v0, p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhlp;->zze()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhlp;->zzf()Lcom/google/android/gms/internal/ads/zzhlw;

    .line 7
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhlp;->zzd()Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzhyg;->zzc(Lcom/google/android/gms/internal/ads/zzhbt;)[B

    move-result-object p1

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/security/GeneralSecurityException;

    const-string v0, "AES-CMAC not available."

    .line 4
    invoke-direct {p2, v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 2
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Cannot use AES-CMAC in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhlp;Ljava/security/Provider;)Lcom/google/android/gms/internal/ads/zzhlx;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhne;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhne;-><init>(Lcom/google/android/gms/internal/ads/zzhlp;Ljava/security/Provider;)V

    return-object v0
.end method
