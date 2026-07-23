.class final synthetic Lcom/google/android/gms/internal/ads/zzbfv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcen;

.field private final synthetic zzb:Ljava/util/concurrent/Future;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcen;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzb:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zza:Lcom/google/android/gms/internal/ads/zzcen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcen;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzb:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
