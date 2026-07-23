.class final Lcom/google/android/gms/internal/ads/zzcfd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcfi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfi;II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcfd;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcfd;->zzb:I

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfd;->zzc:Lcom/google/android/gms/internal/ads/zzcfi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfd;->zzc:Lcom/google/android/gms/internal/ads/zzcfi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfi;->zzt()Lcom/google/android/gms/internal/ads/zzcfj;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcfd;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcfd;->zzb:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfi;->zzt()Lcom/google/android/gms/internal/ads/zzcfj;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcfj;->zzj(II)V

    :cond_0
    return-void
.end method
