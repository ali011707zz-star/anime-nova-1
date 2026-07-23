.class public final Lcom/google/android/gms/internal/ads/zzwc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwi;
.implements Lcom/google/android/gms/internal/ads/zzwh;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzwk;

.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaan;

.field private zzd:Lcom/google/android/gms/internal/ads/zzwm;

.field private zze:Lcom/google/android/gms/internal/ads/zzwi;

.field private zzf:Lcom/google/android/gms/internal/ads/zzwh;

.field private zzg:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzaan;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzc:Lcom/google/android/gms/internal/ads/zzaan;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzb:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzg:J

    return-void
.end method

.method private final zzv(J)J
    .locals 4

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzg:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzb:J

    return-wide v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzwh;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzf:Lcom/google/android/gms/internal/ads/zzwh;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzb:J

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzwc;->zzv(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzwi;->zzb(Lcom/google/android/gms/internal/ads/zzwh;J)V

    :cond_0
    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzc()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzd:Lcom/google/android/gms/internal/ads/zzwm;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwm;->zzt()V

    :cond_1
    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzyn;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzd()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v0

    return-object v0
.end method

.method public final zze([Lcom/google/android/gms/internal/ads/zzaac;[Z[Lcom/google/android/gms/internal/ads/zzyc;[ZJ)J
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzg:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzb:J

    cmp-long v4, p5, v4

    if-nez v4, :cond_0

    move-wide v10, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v10, p5

    :goto_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzg:J

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    .line 2
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzwi;->zze([Lcom/google/android/gms/internal/ads/zzaac;[Z[Lcom/google/android/gms/internal/ads/zzyc;[ZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzf(JZ)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzf(JZ)V

    return-void
.end method

.method public final zzg(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwi;->zzg(J)V

    return-void
.end method

.method public final zzh()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzh()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzj(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwi;->zzj(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzk(JLcom/google/android/gms/internal/ads/zzmt;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwi;->zzk(JLcom/google/android/gms/internal/ads/zzmt;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzl()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzll;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwi;->zzm(Lcom/google/android/gms/internal/ads/zzll;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzo(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzg:J

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzwi;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzf:Lcom/google/android/gms/internal/ads/zzwh;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzwh;->zzp(Lcom/google/android/gms/internal/ads/zzwi;)V

    return-void
.end method

.method public final zzq()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzg:J

    return-wide v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzwm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzd:Lcom/google/android/gms/internal/ads/zzwm;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzd:Lcom/google/android/gms/internal/ads/zzwm;

    return-void
.end method

.method public final bridge synthetic zzs(Lcom/google/android/gms/internal/ads/zzye;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwi;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzf:Lcom/google/android/gms/internal/ads/zzwh;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzyd;->zzs(Lcom/google/android/gms/internal/ads/zzye;)V

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzwk;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzb:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzv(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzd:Lcom/google/android/gms/internal/ads/zzwm;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzc:Lcom/google/android/gms/internal/ads/zzaan;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzwm;->zzG(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzaan;J)Lcom/google/android/gms/internal/ads/zzwi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzf:Lcom/google/android/gms/internal/ads/zzwh;

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzwi;->zzb(Lcom/google/android/gms/internal/ads/zzwh;J)V

    :cond_0
    return-void
.end method

.method public final zzu()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zze:Lcom/google/android/gms/internal/ads/zzwi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzd:Lcom/google/android/gms/internal/ads/zzwm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzwm;->zzD(Lcom/google/android/gms/internal/ads/zzwi;)V

    :cond_0
    return-void
.end method
