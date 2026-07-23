.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zznb;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/content/Context;

.field private final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznb;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznb;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->$r8$clinit:I

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zznb;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznb;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v2, 0x0

    const-string v3, "GLAS"

    invoke-static {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzor;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/zzor;

    move-result-object v0

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
