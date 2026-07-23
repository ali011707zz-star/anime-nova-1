.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zznd;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznd;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->$r8$clinit:I

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zznd;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzor;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzor;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
