.class final Lcom/google/android/gms/internal/ads/zzex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfa;

.field private final zzb:I

.field private zzc:Ljava/lang/Object;

.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:Z

.field private zzh:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfa;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzex;->zza:Lcom/google/android/gms/internal/ads/zzfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzex;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zza:Lcom/google/android/gms/internal/ads/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbb;->zza()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzg:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzg()Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object v0

    .line 2
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzk(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zzg:Z

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbb;->zzq()Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbb;->zzr()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzbf;->zzf(I)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v6

    .line 5
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbb;->zzy()I

    move-result v4

    .line 6
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbb;->zzz()I

    move-result v5

    .line 7
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzbb;->zzu()J

    move-result-wide v6

    if-eqz v3, :cond_3

    const/4 v8, -0x1

    if-ne v4, v8, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzf()Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v4

    .line 8
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    const-wide/16 v9, 0x0

    .line 9
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzfj;->zzp(J)J

    move-result-wide v9

    sub-long/2addr v6, v9

    move v4, v8

    .line 10
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzg:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzc:Ljava/lang/Object;

    .line 11
    invoke-static {v3, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzd:I

    if-ne v4, v1, :cond_5

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zze:I

    if-ne v5, v1, :cond_5

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzex;->zzf:J

    cmp-long v1, v6, v10

    if-nez v1, :cond_5

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzex;->zzh:J

    sub-long/2addr v8, v3

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzb:I

    int-to-long v3, v1

    cmp-long v3, v8, v3

    if-ltz v3, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zze()Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfb;

    .line 14
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzfb;-><init>(II)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zza(Lcom/google/android/gms/internal/ads/zzfb;)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzg:Z

    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/zzex;->zzh:J

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzex;->zzc:Ljava/lang/Object;

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzex;->zzd:I

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzex;->zze:I

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzex;->zzf:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzg()Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object v1

    .line 12
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzk(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfa;->zzg()Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzex;->zzb:I

    .line 13
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzi(II)Z

    return-void
.end method
