.class final Lcom/google/android/gms/internal/ads/zzyj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzyc;

.field private final zzb:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzyc;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyj;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzyj;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzyc;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyj;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    return-object v0
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyj;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyc;->zzb()Z

    move-result v0

    return v0
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyj;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyc;->zzc()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzih;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyj;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzyc;->zzd(Lcom/google/android/gms/internal/ads/zzlh;Lcom/google/android/gms/internal/ads/zzih;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzih;->zze:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzyj;->zzb:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzih;->zze:J

    return p3

    :cond_0
    return p1
.end method

.method public final zze(J)I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzyj;->zzb:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyj;->zza:Lcom/google/android/gms/internal/ads/zzyc;

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzyc;->zze(J)I

    move-result p1

    return p1
.end method
