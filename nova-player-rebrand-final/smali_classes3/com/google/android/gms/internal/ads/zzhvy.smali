.class public final Lcom/google/android/gms/internal/ads/zzhvy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbr;


# static fields
.field private static final zzb:[B

.field private static final zzc:[B

.field private static final zzd:[B


# instance fields
.field zza:Ljava/security/Provider;

.field private final zze:Ljava/security/interfaces/RSAPrivateCrtKey;

.field private final zzf:Ljava/lang/String;

.field private final zzg:[B

.field private final zzh:[B

.field private final zzi:Lcom/google/android/gms/internal/ads/zzhbs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhvy;->zzb:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhvy;->zzc:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvy;->zzd:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data
.end method

.method private constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/android/gms/internal/ads/zzhtw;[B[BLcom/google/android/gms/internal/ads/zzhbs;Ljava/security/Provider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhtw;->zza:Lcom/google/android/gms/internal/ads/zzhtw;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhtw;->zzb:Lcom/google/android/gms/internal/ads/zzhtw;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhtw;->zzc:Lcom/google/android/gms/internal/ads/zzhtw;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Unsupported hash: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhyc;->zzc(I)V

    .line 3
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhyc;->zzd(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhvy;->zze:Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhvz;->zzc(Lcom/google/android/gms/internal/ads/zzhtw;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhvy;->zzf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhvy;->zzg:[B

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhvy;->zzh:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhvy;->zzi:Lcom/google/android/gms/internal/ads/zzhbs;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhvy;->zza:Ljava/security/Provider;

    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use RSA PKCS1.5 in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhua;)Lcom/google/android/gms/internal/ads/zzhbr;
    .locals 16

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhvz;->zzb()Ljava/security/Provider;

    move-result-object v6

    const-string v0, "RSA"

    if-eqz v6, :cond_0

    .line 2
    invoke-static {v0, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhxe;->zzf:Lcom/google/android/gms/internal/ads/zzhxe;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhxe;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 4
    :goto_0
    new-instance v7, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhua;->zze()Lcom/google/android/gms/internal/ads/zzhuc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhuc;->zzd()Ljava/math/BigInteger;

    move-result-object v8

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhua;->zzd()Lcom/google/android/gms/internal/ads/zzhty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhty;->zzd()Ljava/math/BigInteger;

    move-result-object v9

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhua;->zzi()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v10

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhua;->zzf()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v11

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhua;->zzh()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v12

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhua;->zzj()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v13

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhua;->zzk()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v14

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhua;->zzl()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-direct/range {v7 .. v15}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 13
    invoke-virtual {v0, v7}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v6, :cond_1

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhua;->zze()Lcom/google/android/gms/internal/ads/zzhuc;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzhvz;->zze(Lcom/google/android/gms/internal/ads/zzhuc;Ljava/security/Provider;)Lcom/google/android/gms/internal/ads/zzhbs;

    move-result-object v0

    :goto_1
    move-object v5, v0

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhua;->zze()Lcom/google/android/gms/internal/ads/zzhuc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhxw;->zzb(Lcom/google/android/gms/internal/ads/zzhuc;)Lcom/google/android/gms/internal/ads/zzhbs;

    move-result-object v0

    goto :goto_1

    .line 14
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhvy;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhua;->zzd()Lcom/google/android/gms/internal/ads/zzhty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhty;->zzf()Lcom/google/android/gms/internal/ads/zzhtw;

    move-result-object v2

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhua;->zze()Lcom/google/android/gms/internal/ads/zzhuc;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhuw;->zze()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object v3

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhua;->zzd()Lcom/google/android/gms/internal/ads/zzhty;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhty;->zze()Lcom/google/android/gms/internal/ads/zzhtx;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhtx;->zzc:Lcom/google/android/gms/internal/ads/zzhtx;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhvy;->zzc:[B

    goto :goto_3

    .line 21
    :cond_2
    sget-object v4, Lcom/google/android/gms/internal/ads/zzhvy;->zzb:[B

    .line 20
    :goto_3
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzhvy;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/android/gms/internal/ads/zzhtw;[B[BLcom/google/android/gms/internal/ads/zzhbs;Ljava/security/Provider;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvy;->zzd:[B

    .line 21
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhbr;->zza([B)[B

    return-object v0
.end method


# virtual methods
.method public final zza([B)[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhvy;->zza:Ljava/security/Provider;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhvy;->zzf:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhvy;->zzf:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhxe;->zzc:Lcom/google/android/gms/internal/ads/zzhxe;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhxe;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Signature;

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhvy;->zze:Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 4
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhvy;->zzh:[B

    array-length v2, v1

    if-lez v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhvy;->zzg:[B

    array-length v2, v1

    if-lez v2, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhwr;->zza([[B)[B

    move-result-object v0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhvy;->zzi:Lcom/google/android/gms/internal/ads/zzhbs;

    .line 8
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzhbs;->zza([B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSA signature computation error"

    .line 9
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
