.class public final Lcom/google/android/gms/internal/ads/zzhsh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzhsk;

.field private zzb:Lcom/google/android/gms/internal/ads/zzhyf;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsh;->zza:Lcom/google/android/gms/internal/ads/zzhsk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsh;->zzb:Lcom/google/android/gms/internal/ads/zzhyf;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhsk;)Lcom/google/android/gms/internal/ads/zzhsh;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsh;->zza:Lcom/google/android/gms/internal/ads/zzhsk;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhyf;)Lcom/google/android/gms/internal/ads/zzhsh;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsh;->zzb:Lcom/google/android/gms/internal/ads/zzhyf;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhsi;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsh;->zza:Lcom/google/android/gms/internal/ads/zzhsk;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhsh;->zzb:Lcom/google/android/gms/internal/ads/zzhyf;

    if-eqz v1, :cond_2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhyf;->zzb(Lcom/google/android/gms/internal/ads/zzhbt;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsk;->zzd()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsk;->zzf()Lcom/google/android/gms/internal/ads/zzhsg;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsg;->zzd()Lcom/google/android/gms/internal/ads/zzhsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsc;->zza()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    const-string v5, "Invalid private value"

    if-lez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsc;->zza()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhis;->zzd(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhsi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhsh;->zza:Lcom/google/android/gms/internal/ads/zzhsk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhsh;->zzb:Lcom/google/android/gms/internal/ads/zzhyf;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhsi;-><init>(Lcom/google/android/gms/internal/ads/zzhsk;Lcom/google/android/gms/internal/ads/zzhyf;[B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without a private value"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without a ecdsa public key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
