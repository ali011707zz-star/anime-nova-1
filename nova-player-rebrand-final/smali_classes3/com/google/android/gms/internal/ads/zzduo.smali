.class final synthetic Lcom/google/android/gms/internal/ads/zzduo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzduu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzduu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzduo;->zza:Lcom/google/android/gms/internal/ads/zzduu;

    return-void
.end method


# virtual methods
.method public final synthetic onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzduo;->zza:Lcom/google/android/gms/internal/ads/zzduu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzduu;->zzd(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
