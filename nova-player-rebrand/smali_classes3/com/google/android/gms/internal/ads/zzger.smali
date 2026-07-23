.class public final Lcom/google/android/gms/internal/ads/zzger;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public zza:J

.field public zzb:J

.field public zzc:J

.field public zzd:J

.field public zze:D

.field public zzf:F

.field public zzg:F

.field public zzh:F

.field public zzi:F

.field private zzj:D

.field private zzk:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzb(Landroid/view/MotionEvent;DDD)D
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    float-to-double v2, p0

    sub-double/2addr v0, p1

    sub-double/2addr v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    add-double/2addr p5, p0

    return-wide p5
.end method


# virtual methods
.method final synthetic zza(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzger;->zzd:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzger;->zzd:J

    return-void

    .line 1
    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zzb:J

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    add-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zzb:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzger;->zzj:D

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzger;->zzk:D

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzger;->zze:D

    move-object v2, p1

    .line 3
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzger;->zzb(Landroid/view/MotionEvent;DDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zze:D

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zzj:D

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zzk:D

    return-void

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzger;->zzc:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzger;->zzc:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzger;->zzj:D

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzger;->zzk:D

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzger;->zze:D

    move-object v2, p1

    .line 6
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzger;->zzb(Landroid/view/MotionEvent;DDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zze:D

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zzj:D

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zzk:D

    return-void

    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzger;->zza:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzger;->zza:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zze:D

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zzj:D

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zzk:D

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zzf:F

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zzg:F

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzger;->zzh:F

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzger;->zzi:F

    return-void
.end method
