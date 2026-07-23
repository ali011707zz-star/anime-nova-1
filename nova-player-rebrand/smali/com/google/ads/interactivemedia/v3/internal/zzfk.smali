.class final Lcom/google/ads/interactivemedia/v3/internal/zzfk;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/signals/SecureSignalsAdapter;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzd:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final zza()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzfk;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method final zzb()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method final zzc()Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzfi;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzfi;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfk;)V

    const/4 v0, 0x0

    throw v0
.end method

.method final zzd()Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzfj;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzfj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzfk;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 v0, 0x0

    throw v0
.end method
