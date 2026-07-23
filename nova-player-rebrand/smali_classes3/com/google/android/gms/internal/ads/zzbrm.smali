.class final synthetic Lcom/google/android/gms/internal/ads/zzbrm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/common/util/Predicate;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzboh;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzboh;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zza:Lcom/google/android/gms/internal/ads/zzboh;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzboh;

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbrh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrm;->zza:Lcom/google/android/gms/internal/ads/zzboh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrh;->zzb()Lcom/google/android/gms/internal/ads/zzboh;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
