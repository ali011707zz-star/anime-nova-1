.class public final Lcom/google/android/gms/internal/ads/zzhuh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zzg:Ljava/math/BigInteger;

.field private static final zzh:Ljava/math/BigInteger;


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Ljava/math/BigInteger;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhui;

.field private zzd:Lcom/google/android/gms/internal/ads/zzhui;

.field private zze:Ljava/lang/Integer;

.field private zzf:Lcom/google/android/gms/internal/ads/zzhuj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhuh;->zzg:Ljava/math/BigInteger;

    const/16 v1, 0x100

    .line 2
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhuh;->zzh:Ljava/math/BigInteger;

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zza:Ljava/lang/Integer;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhuk;->zza:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzb:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzc:Lcom/google/android/gms/internal/ads/zzhui;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzd:Lcom/google/android/gms/internal/ads/zzhui;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zze:Ljava/lang/Integer;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhuj;->zzd:Lcom/google/android/gms/internal/ads/zzhuj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzf:Lcom/google/android/gms/internal/ads/zzhuj;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzhuh;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zza:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhuh;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzb:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzhuj;)Lcom/google/android/gms/internal/ads/zzhuh;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzf:Lcom/google/android/gms/internal/ads/zzhuj;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzhui;)Lcom/google/android/gms/internal/ads/zzhuh;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzc:Lcom/google/android/gms/internal/ads/zzhui;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzhui;)Lcom/google/android/gms/internal/ads/zzhuh;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzd:Lcom/google/android/gms/internal/ads/zzhui;

    return-object p0
.end method

.method public final zzf(I)Lcom/google/android/gms/internal/ads/zzhuh;
    .locals 3

    if-ltz p1, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zze:Ljava/lang/Integer;

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invalid salt length in bytes %d; salt length must be positive"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzhuk;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zza:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzb:Ljava/math/BigInteger;

    if-eqz v1, :cond_a

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzc:Lcom/google/android/gms/internal/ads/zzhui;

    if-eqz v1, :cond_9

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzd:Lcom/google/android/gms/internal/ads/zzhui;

    if-eqz v1, :cond_8

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzf:Lcom/google/android/gms/internal/ads/zzhuj;

    if-eqz v1, :cond_7

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zze:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x800

    if-lt v0, v1, :cond_5

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzc:Lcom/google/android/gms/internal/ads/zzhui;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzd:Lcom/google/android/gms/internal/ads/zzhui;

    if-ne v0, v1, :cond_4

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzb:Ljava/math/BigInteger;

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhuk;->zza:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz v1, :cond_3

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhuh;->zzg:Ljava/math/BigInteger;

    .line 14
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhuh;->zzh:Ljava/math/BigInteger;

    .line 16
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 12
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhuk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zza:Ljava/lang/Integer;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzb:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzf:Lcom/google/android/gms/internal/ads/zzhuj;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzc:Lcom/google/android/gms/internal/ads/zzhui;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zzd:Lcom/google/android/gms/internal/ads/zzhui;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zze:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzhuk;-><init>(ILjava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhuj;Lcom/google/android/gms/internal/ads/zzhui;Lcom/google/android/gms/internal/ads/zzhui;I[B)V

    return-object v1

    .line 18
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Public exponent cannot be larger than 2^256."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Invalid public exponent"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Public exponent must be at least 65537."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "MGF1 hash is different from signature hash"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_5
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhuh;->zza:Ljava/lang/Integer;

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string v1, "Invalid key size in bytes %d; must be at least %d bits"

    .line 10
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "salt length is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "mgf1 hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "signature hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "publicExponent is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
