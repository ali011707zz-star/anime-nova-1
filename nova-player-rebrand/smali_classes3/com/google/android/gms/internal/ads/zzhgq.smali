.class public final Lcom/google/android/gms/internal/ads/zzhgq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# static fields
.field private static final zza:[B

.field private static final zzb:[B

.field private static final zzc:[B

.field private static final zzd:[B

.field private static final zze:[B


# instance fields
.field private final zzf:Lcom/google/android/gms/internal/ads/zzhgp;

.field private final zzg:Ljavax/crypto/SecretKey;

.field private final zzh:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "7a806c"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhxo;->zza(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgq;->zza:[B

    const-string v0, "46bb91c3c5"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhxo;->zza(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgq;->zzb:[B

    const-string v0, "36864200e0eaf5284d884a0e77d31646"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhxo;->zza(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgq;->zzc:[B

    const-string v0, "bae8e37fc83441b16034566b"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhxo;->zza(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgq;->zzd:[B

    const-string v0, "af60eb711bd85bc1e4d3e0a462e074eea428a8"

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhxo;->zza(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgq;->zze:[B

    return-void
.end method

.method private constructor <init>([B[BLcom/google/android/gms/internal/ads/zzhgp;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhgq;->zzh:[B

    array-length p2, p1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhyc;->zza(I)V

    .line 2
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhgq;->zzg:Ljavax/crypto/SecretKey;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhgq;->zzf:Lcom/google/android/gms/internal/ads/zzhgp;

    return-void
.end method

.method public static zzb(Ljavax/crypto/Cipher;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgq;->zzd:[B

    array-length v2, v1

    .line 2
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-direct {v3, v4, v1, v0, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    .line 3
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhgq;->zzc:[B

    const-string v4, "AES"

    invoke-direct {v1, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgq;->zzb:[B

    .line 4
    invoke-virtual {p0, v1}, Ljavax/crypto/Cipher;->updateAAD([B)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgq;->zze:[B

    .line 5
    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhgq;->zza:[B

    .line 6
    invoke-static {p0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzhdo;Lcom/google/android/gms/internal/ads/zzhgp;)Lcom/google/android/gms/internal/ads/zzhas;
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhgp;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzb(Ljavax/crypto/Cipher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgq;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhdo;->zze()Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhyg;->zzc(Lcom/google/android/gms/internal/ads/zzhbt;)[B

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhdo;->zzc()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzhgq;-><init>([B[BLcom/google/android/gms/internal/ads/zzhgp;)V

    return-object v0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cipher does not implement AES GCM SIV."

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 6

    .line 1
    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhgq;->zzh:[B

    array-length v2, v1

    add-int/lit8 v3, v2, 0x1c

    if-lt v0, v3, :cond_2

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzhln;->zze([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhgq;->zzf:Lcom/google/android/gms/internal/ads/zzhgp;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhgp;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    .line 6
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    const/16 v5, 0xc

    invoke-direct {v3, v4, p1, v2, v5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhgq;->zzg:Ljavax/crypto/SecretKey;

    .line 7
    invoke-virtual {v1, v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v3, p2

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    add-int/lit8 p2, v2, 0xc

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0xc

    .line 9
    invoke-virtual {v1, p1, p2, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

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
.end method
