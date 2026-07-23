.class final synthetic Lcom/google/android/gms/internal/ads/zzgyp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgyq;

.field private final synthetic zzb:I

.field private final synthetic zzc:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgyq;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zza:Lcom/google/android/gms/internal/ads/zzgyq;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zza:Lcom/google/android/gms/internal/ads/zzgyq;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgyp;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgyq;->zzy(ILcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
