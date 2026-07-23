.class public final Lcom/google/android/gms/internal/ads/zzhes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzheu;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhet;

.field private zzd:Lcom/google/android/gms/internal/ads/zzhch;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzheu;)Lcom/google/android/gms/internal/ads/zzhes;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zza:Lcom/google/android/gms/internal/ads/zzheu;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhes;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzhet;)Lcom/google/android/gms/internal/ads/zzhes;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:Lcom/google/android/gms/internal/ads/zzhet;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzhch;)Lcom/google/android/gms/internal/ads/zzhes;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzd:Lcom/google/android/gms/internal/ads/zzhch;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhev;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zza:Lcom/google/android/gms/internal/ads/zzheu;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzheu;->zzb:Lcom/google/android/gms/internal/ads/zzheu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zza:Lcom/google/android/gms/internal/ads/zzheu;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:Lcom/google/android/gms/internal/ads/zzhet;

    if-eqz v0, :cond_a

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzd:Lcom/google/android/gms/internal/ads/zzhch;

    if-eqz v1, :cond_9

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhbp;->zza()Z

    move-result v2

    if-nez v2, :cond_8

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhet;->zza:Lcom/google/android/gms/internal/ads/zzhet;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzhdm;

    if-nez v2, :cond_6

    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhet;->zzc:Lcom/google/android/gms/internal/ads/zzhet;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzheb;

    if-nez v2, :cond_6

    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhet;->zzb:Lcom/google/android/gms/internal/ads/zzhet;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzhfx;

    if-nez v2, :cond_6

    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhet;->zzd:Lcom/google/android/gms/internal/ads/zzhet;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzhcv;

    if-nez v2, :cond_6

    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhet;->zze:Lcom/google/android/gms/internal/ads/zzhet;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzhdd;

    if-nez v2, :cond_6

    :cond_5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhet;->zzf:Lcom/google/android/gms/internal/ads/zzhet;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, v1, Lcom/google/android/gms/internal/ads/zzhdv;

    if-eqz v0, :cond_7

    .line 12
    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhev;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhes;->zza:Lcom/google/android/gms/internal/ads/zzheu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:Lcom/google/android/gms/internal/ads/zzhet;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzd:Lcom/google/android/gms/internal/ads/zzhch;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhev;-><init>(Lcom/google/android/gms/internal/ads/zzheu;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhet;Lcom/google/android/gms/internal/ads/zzhch;[B)V

    return-object v1

    .line 11
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:Lcom/google/android/gms/internal/ads/zzhet;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhet;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzd:Lcom/google/android/gms/internal/ads/zzhch;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x43

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot use parsing strategy "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " when new keys are picked according to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "dekParametersForNewKeys must not have ID Requirements"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "dekParametersForNewKeys must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "dekParsingStrategy must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "kekUri must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
