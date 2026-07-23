.class public final Lcom/google/android/gms/internal/ads/zzhwh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbr;


# static fields
.field private static final zza:[B

.field private static final zzb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhwh;->zza:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzhwh;->zzb:[B

    return-void
.end method

.method private constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/android/gms/internal/ads/zzhui;Lcom/google/android/gms/internal/ads/zzhui;I[B[BLjava/security/Provider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x2

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzhid;->zza(I)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p5

    invoke-virtual {p5}, Ljava/math/BigInteger;->bitLength()I

    move-result p5

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzhyc;->zzc(I)V

    .line 4
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhyc;->zzd(Ljava/math/BigInteger;)V

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhwi;->zzc(Lcom/google/android/gms/internal/ads/zzhui;)Ljava/lang/String;

    .line 6
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzhwi;->zzd(Lcom/google/android/gms/internal/ads/zzhui;Lcom/google/android/gms/internal/ads/zzhui;I)Ljava/security/spec/PSSParameterSpec;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Cannot use RSA PSS in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhum;)Lcom/google/android/gms/internal/ads/zzhbr;
    .locals 18

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhwi;->zzb()Ljava/security/Provider;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 2
    const-string v0, "RSA"

    .line 3
    invoke-static {v0, v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhum;->zzd()Lcom/google/android/gms/internal/ads/zzhuk;

    move-result-object v1

    .line 5
    new-instance v8, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhum;->zze()Lcom/google/android/gms/internal/ads/zzhuo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhuo;->zzd()Ljava/math/BigInteger;

    move-result-object v9

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhuk;->zzd()Ljava/math/BigInteger;

    move-result-object v10

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhum;->zzi()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v11

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhum;->zzf()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v12

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhum;->zzh()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v13

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhum;->zzj()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v14

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhum;->zzk()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v15

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhum;->zzl()Lcom/google/android/gms/internal/ads/zzhyf;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v16

    invoke-direct/range {v8 .. v16}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 14
    invoke-virtual {v0, v8}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    move-object v2, v1

    move-object v1, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwh;

    move-object v3, v2

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhuk;->zzf()Lcom/google/android/gms/internal/ads/zzhui;

    move-result-object v2

    move-object v4, v3

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhuk;->zzg()Lcom/google/android/gms/internal/ads/zzhui;

    move-result-object v3

    move-object v5, v4

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhuk;->zzh()I

    move-result v4

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhum;->zze()Lcom/google/android/gms/internal/ads/zzhuo;

    move-result-object v6

    .line 19
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhuw;->zze()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v6

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhye;->zzc()[B

    move-result-object v6

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhuk;->zze()Lcom/google/android/gms/internal/ads/zzhuj;

    move-result-object v5

    sget-object v8, Lcom/google/android/gms/internal/ads/zzhuj;->zzc:Lcom/google/android/gms/internal/ads/zzhuj;

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhwh;->zzb:[B

    :goto_0
    move-object/from16 v17, v6

    move-object v6, v5

    move-object/from16 v5, v17

    goto :goto_1

    .line 21
    :cond_0
    sget-object v5, Lcom/google/android/gms/internal/ads/zzhwh;->zza:[B

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzhwh;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/android/gms/internal/ads/zzhui;Lcom/google/android/gms/internal/ads/zzhui;I[B[BLjava/security/Provider;)V

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v1, "RSA SSA PSS using Conscrypt is not supported."

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza([B)[B
    .locals 0

    .line 0
    const/4 p1, 0x0

    throw p1
.end method
