.class abstract Lcom/google/android/gms/internal/ads/zzacv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field final zza:Landroid/view/Choreographer;

.field final zzb:Landroid/hardware/display/DisplayManager;

.field volatile zzc:J

.field volatile zzd:J


# direct methods
.method synthetic constructor <init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacv;->zza:Landroid/view/Choreographer;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzb:Landroid/hardware/display/DisplayManager;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzd:J

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method

.method zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzb:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    .line 2
    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method abstract zzb()V
.end method
