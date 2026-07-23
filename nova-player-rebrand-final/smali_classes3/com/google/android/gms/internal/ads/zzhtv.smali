.class public final Lcom/google/android/gms/internal/ads/zzhtv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zze:Ljava/math/BigInteger;

.field private static final zzf:Ljava/math/BigInteger;


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Ljava/math/BigInteger;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhtw;

.field private zzd:Lcom/google/android/gms/internal/ads/zzhtx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhtv;->zze:Ljava/math/BigInteger;

    const/16 v1, 0x100

    .line 2
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhtv;->zzf:Ljava/math/BigInteger;

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zza:Ljava/lang/Integer;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhty;->zza:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzb:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzc:Lcom/google/android/gms/internal/ads/zzhtw;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhtx;->zzd:Lcom/google/android/gms/internal/ads/zzhtx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzd:Lcom/google/android/gms/internal/ads/zzhtx;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzhtv;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zza:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhtv;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzb:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzhtx;)Lcom/google/android/gms/internal/ads/zzhtv;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzd:Lcom/google/android/gms/internal/ads/zzhtx;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzhtw;)Lcom/google/android/gms/internal/ads/zzhtv;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzc:Lcom/google/android/gms/internal/ads/zzhtw;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhty;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zza:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzb:Ljava/math/BigInteger;

    if-eqz v1, :cond_7

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzc:Lcom/google/android/gms/internal/ads/zzhtw;

    if-eqz v1, :cond_6

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzd:Lcom/google/android/gms/internal/ads/zzhtx;

    if-eqz v1, :cond_5

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x800

    if-lt v0, v1, :cond_4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzb:Ljava/math/BigInteger;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhty;->zza:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz v1, :cond_3

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtv;->zze:Ljava/math/BigInteger;

    .line 10
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtv;->zzf:Ljava/math/BigInteger;

    .line 12
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 8
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhty;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zza:Ljava/lang/Integer;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzb:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzd:Lcom/google/android/gms/internal/ads/zzhtx;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzc:Lcom/google/android/gms/internal/ads/zzhtw;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhty;-><init>(ILjava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhtx;Lcom/google/android/gms/internal/ads/zzhtw;[B)V

    return-object v1

    .line 14
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Public exponent cannot be larger than 2^256."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Invalid public exponent"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Public exponent must be at least 65537."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_4
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zza:Ljava/lang/Integer;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Invalid key size in bytes %d; must be at least 2048 bits"

    .line 7
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "publicExponent is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
