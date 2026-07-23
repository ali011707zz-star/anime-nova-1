.class final Lcom/google/android/gms/internal/ads/zzcjm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcce;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcjw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjw;Lcom/google/android/gms/internal/ads/zzcce;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zza:Lcom/google/android/gms/internal/ads/zzcce;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzb:Lcom/google/android/gms/internal/ads/zzcjw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zza:Lcom/google/android/gms/internal/ads/zzcce;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zzb:Lcom/google/android/gms/internal/ads/zzcjw;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcjw;->zzZ(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcce;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method
