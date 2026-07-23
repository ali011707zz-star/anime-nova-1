.class final Lcom/google/android/gms/internal/ads/zzclr;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Ljava/lang/Runnable;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcls;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcls;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclr;->zza:Ljava/lang/Runnable;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzb:Lcom/google/android/gms/internal/ads/zzcls;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclr;->zzb:Lcom/google/android/gms/internal/ads/zzcls;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcls;->zza()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclr;->zza:Ljava/lang/Runnable;

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
