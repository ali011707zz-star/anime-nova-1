.class final synthetic Lcom/google/android/gms/internal/ads/zzdpe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdpg;

.field private final synthetic zzb:Landroid/view/ViewGroup;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdpg;Landroid/view/ViewGroup;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpe;->zza:Lcom/google/android/gms/internal/ads/zzdpg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpe;->zzb:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpe;->zza:Lcom/google/android/gms/internal/ads/zzdpg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpe;->zzb:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpg;->zzg(Landroid/view/ViewGroup;)V

    return-void
.end method
