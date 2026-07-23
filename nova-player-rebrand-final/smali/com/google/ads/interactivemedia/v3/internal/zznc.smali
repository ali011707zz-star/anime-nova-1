.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zznc;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzn;

.field private final synthetic zzb:I


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzn;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznc;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzn;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zznc;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zznf;->$r8$clinit:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zznc;->zzb:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zznc;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzn;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzor;

    .line 3
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/zzr;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zzaq()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzor;->zza([B)Lcom/google/ads/interactivemedia/v3/internal/zzoq;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzoq;->zzc(I)Lcom/google/ads/interactivemedia/v3/internal/zzoq;

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzoq;->zza()V

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
