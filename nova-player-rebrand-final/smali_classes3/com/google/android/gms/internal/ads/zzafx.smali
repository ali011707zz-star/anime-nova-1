.class public Lcom/google/android/gms/internal/ads/zzafx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafy;


# instance fields
.field private final zza:J

.field private final zzb:Lcom/google/android/gms/internal/ads/zzafw;


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->zza:J

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafw;

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzafz;->zza:Lcom/google/android/gms/internal/ads/zzafz;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzafz;

    .line 1
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(JJ)V

    move-object p1, v0

    .line 2
    :goto_0
    invoke-direct {v1, p1, p1}, Lcom/google/android/gms/internal/ads/zzafw;-><init>(Lcom/google/android/gms/internal/ads/zzafz;Lcom/google/android/gms/internal/ads/zzafz;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzafx;->zzb:Lcom/google/android/gms/internal/ads/zzafw;

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafx;->zza:J

    return-wide v0
.end method

.method public final zzb()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzafw;
    .locals 0

    .line 0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafx;->zzb:Lcom/google/android/gms/internal/ads/zzafw;

    return-object p1
.end method
