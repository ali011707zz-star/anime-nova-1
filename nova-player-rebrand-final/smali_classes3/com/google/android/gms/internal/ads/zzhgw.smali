.class public final Lcom/google/android/gms/internal/ads/zzhgw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzb:[B

.field private static final zzc:[B

.field private static final zzd:[B


# instance fields
.field private final zze:Ljavax/crypto/SecretKey;

.field private final zzf:[B

.field private final zzg:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhxo;->zza(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzb:[B

    const-string v0, "070000004041424344454647"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhxo;->zza(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzc:[B

    const-string v0, "a0784d7a4716f3feb4f64e7f4b39bf04"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhxo;->zza(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgw;->zzd:[B

    return-void
.end method

.method private constructor <init>([B[BLjava/security/Provider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "ChaCha20"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zze:Ljavax/crypto/SecretKey;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zzf:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zzg:Ljava/security/Provider;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhdw;)Lcom/google/android/gms/internal/ads/zzhas;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhgw;->zzc()Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhgw;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhdw;->zze()Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhyg;->zzc(Lcom/google/android/gms/internal/ads/zzhbt;)[B

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhdw;->zzc()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object p0

    .line 4
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzhgw;-><init>([B[BLjava/security/Provider;)V

    return-object v1
.end method

.method static zzc()Ljavax/crypto/Cipher;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhxe;->zza:Lcom/google/android/gms/internal/ads/zzhxe;

    const-string v1, "ChaCha20-Poly1305"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhxe;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgw;->zze(Ljavax/crypto/Cipher;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "JCE does not support algorithm: ChaCha20-Poly1305"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzd()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhgw;->zzc()Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private static zze(Ljavax/crypto/Cipher;)Z
    .locals 7

    .line 1
    const-string v0, "ChaCha20"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhgw;->zzc:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 2
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhgw;->zzb:[B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhgw;->zzd:[B

    .line 3
    invoke-virtual {p0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 4
    array-length v6, v6

    if-eqz v6, :cond_0

    return v1

    :cond_0
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    .line 5
    invoke-direct {v6, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v5, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 6
    invoke-virtual {p0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 7
    array-length p0, p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 6

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zzf:[B

    array-length v1, p1

    array-length v2, v0

    add-int/lit8 v3, v2, 0x1c

    if-lt v1, v3, :cond_2

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhln;->zze([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    .line 4
    new-array v3, v0, [B

    const/4 v4, 0x0

    .line 5
    invoke-static {p1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zzg:Ljava/security/Provider;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhgw;->zze:Ljavax/crypto/SecretKey;

    const-string v5, "ChaCha20-Poly1305"

    .line 7
    invoke-static {v5, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v5, 0x2

    .line 8
    invoke-virtual {v3, v5, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    add-int/lit8 p2, v2, 0xc

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xc

    .line 10
    invoke-virtual {v3, p1, p2, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
