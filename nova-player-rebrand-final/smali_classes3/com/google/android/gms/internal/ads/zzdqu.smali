.class final synthetic Lcom/google/android/gms/internal/ads/zzdqu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqt;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdqv;

.field private final synthetic zzb:D

.field private final synthetic zzc:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdqv;DZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqu;->zza:Lcom/google/android/gms/internal/ads/zzdqv;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzdqu;->zzb:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzdqu;->zzc:Z

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqu;->zza:Lcom/google/android/gms/internal/ads/zzdqv;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdqu;->zzb:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdqu;->zzc:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaru;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdqv;->zzb(DZLcom/google/android/gms/internal/ads/zzaru;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
