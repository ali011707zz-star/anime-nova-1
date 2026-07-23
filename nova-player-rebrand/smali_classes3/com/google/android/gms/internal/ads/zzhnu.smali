.class public final Lcom/google/android/gms/internal/ads/zzhnu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhnp;


# instance fields
.field private final zza:Ljava/security/Key;

.field private final zzb:Ljava/security/Provider;


# direct methods
.method private constructor <init>([BLjava/security/Provider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnu;->zza:Ljava/security/Key;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhnu;->zzb:Ljava/security/Provider;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Cannot use AES-CMAC in FIPS-mode, as BoringCrypto module is not available"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhnn;)Lcom/google/android/gms/internal/ads/zzhnp;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhih;->zza()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-string v1, "AESCMAC"

    .line 3
    invoke-static {v1, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhnu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnn;->zzd()Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzhyg;->zzc(Lcom/google/android/gms/internal/ads/zzhbt;)[B

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzhnu;-><init>([BLjava/security/Provider;)V

    return-object v1

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Conscrypt not available"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza([BI)[B
    .locals 3

    const/16 v0, 0x10

    if-gt p2, v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnu;->zzb:Ljava/security/Provider;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhnu;->zza:Ljava/security/Key;

    const-string v2, "AESCMAC"

    .line 2
    invoke-static {v2, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 4
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    .line 5
    array-length v0, p1

    if-ne p2, v0, :cond_0

    return-object p1

    .line 6
    :cond_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 1
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "outputLength must not be larger than 16"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
