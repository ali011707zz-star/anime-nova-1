.class public final Lcom/google/android/gms/internal/ads/zzhsj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzhsg;

.field private zzb:Ljava/security/spec/ECPoint;

.field private zzc:Ljava/lang/Integer;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zzb:Ljava/security/spec/ECPoint;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zzc:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzhsg;)Lcom/google/android/gms/internal/ads/zzhsj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    return-object p0
.end method

.method public final zzb(Ljava/security/spec/ECPoint;)Lcom/google/android/gms/internal/ads/zzhsj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zzb:Ljava/security/spec/ECPoint;

    return-object p0
.end method

.method public final zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhsj;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zzc:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhsk;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zzb:Ljava/security/spec/ECPoint;

    if-eqz v1, :cond_8

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsg;->zzd()Lcom/google/android/gms/internal/ads/zzhsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsc;->zza()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhis;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsg;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zzc:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsg;->zza()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zzc:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsg;->zzf()Lcom/google/android/gms/internal/ads/zzhsf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsf;->zzd:Lcom/google/android/gms/internal/ads/zzhsf;

    if-ne v0, v1, :cond_4

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkh;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    :goto_2
    move-object v4, v0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsg;->zzf()Lcom/google/android/gms/internal/ads/zzhsf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsf;->zzc:Lcom/google/android/gms/internal/ads/zzhsf;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsg;->zzf()Lcom/google/android/gms/internal/ads/zzhsf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsf;->zzb:Lcom/google/android/gms/internal/ads/zzhsf;

    if-ne v0, v1, :cond_5

    goto :goto_3

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhsg;->zzf()Lcom/google/android/gms/internal/ads/zzhsf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhsf;->zza:Lcom/google/android/gms/internal/ads/zzhsf;

    if-ne v0, v1, :cond_6

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zzc:Ljava/lang/Integer;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkh;->zzb(I)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v0

    goto :goto_2

    .line 12
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhsg;->zzf()Lcom/google/android/gms/internal/ads/zzhsf;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown EcdsaParameters.Variant: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zzc:Ljava/lang/Integer;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkh;->zza(I)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v0

    goto :goto_2

    .line 8
    :goto_4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhsk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zzb:Ljava/security/spec/ECPoint;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhsj;->zzc:Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhsk;-><init>(Lcom/google/android/gms/internal/ads/zzhsg;Ljava/security/spec/ECPoint;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Integer;[B)V

    return-object v1

    .line 2
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without public point"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
