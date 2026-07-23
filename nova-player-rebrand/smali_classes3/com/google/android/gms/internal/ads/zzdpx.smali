.class final synthetic Lcom/google/android/gms/internal/ads/zzdpx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboh;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdqc;

.field private final synthetic zzb:Landroid/view/View;

.field private final synthetic zzc:Landroid/view/WindowManager;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdqc;Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpx;->zza:Lcom/google/android/gms/internal/ads/zzdqc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpx;->zzb:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpx;->zzc:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpx;->zza:Lcom/google/android/gms/internal/ads/zzdqc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpx;->zzb:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdpx;->zzc:Landroid/view/WindowManager;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjl;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqc;->zzd(Landroid/view/View;Landroid/view/WindowManager;Lcom/google/android/gms/internal/ads/zzcjl;Ljava/util/Map;)V

    return-void
.end method
