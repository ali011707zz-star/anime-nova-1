.class final synthetic Lcom/google/android/gms/internal/ads/zzhab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final synthetic zza:Ljava/util/concurrent/Executor;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgyh;


# direct methods
.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgyh;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhab;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhab;->zzb:Lcom/google/android/gms/internal/ads/zzgyh;

    return-void
.end method


# virtual methods
.method public final synthetic execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhab;->zza:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhab;->zzb:Lcom/google/android/gms/internal/ads/zzgyh;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhaf;->zze(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgyh;Ljava/lang/Runnable;)V

    return-void
.end method
