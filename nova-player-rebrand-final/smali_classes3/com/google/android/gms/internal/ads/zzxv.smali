.class final Lcom/google/android/gms/internal/ads/zzxv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaam;


# instance fields
.field public zza:J

.field public zzb:J

.field public zzc:Lcom/google/android/gms/internal/ads/zzaal;

.field public zzd:Lcom/google/android/gms/internal/ads/zzxv;


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p3, 0x10000

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzxv;->zza(JI)V

    return-void
.end method


# virtual methods
.method public final zza(JI)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzc:Lcom/google/android/gms/internal/ads/zzaal;

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zza:J

    const-wide/32 v0, 0x10000

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzb:J

    return-void
.end method

.method public final zzb(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zza:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzc:Lcom/google/android/gms/internal/ads/zzaal;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:I

    long-to-int p1, p1

    return p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzxv;
    .locals 2

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzc:Lcom/google/android/gms/internal/ads/zzaal;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    return-object v1
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzaal;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzc:Lcom/google/android/gms/internal/ads/zzaal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzaam;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxv;->zzd:Lcom/google/android/gms/internal/ads/zzxv;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxv;->zzc:Lcom/google/android/gms/internal/ads/zzaal;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
