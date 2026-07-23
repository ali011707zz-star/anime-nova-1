.class public final Lcom/google/android/gms/internal/ads/zzfza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfyw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfyw;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfza;->zza:Lcom/google/android/gms/internal/ads/zzfyw;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzfyy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfza;->zza:Lcom/google/android/gms/internal/ads/zzfyw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfyy;

    return-object v0
.end method

.method public final synthetic zzb()Lcom/google/android/gms/internal/ads/zziev;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfza;->zza:Lcom/google/android/gms/internal/ads/zzfyw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zziev;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyw;->zzb()Ljava/util/Map;

    move-result-object v0

    const-string v2, "getQueryIdToAdQualityDataMapMap(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zziev;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zziev;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfyu;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfza;->zza:Lcom/google/android/gms/internal/ads/zzfyw;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfyw;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfyu;)Lcom/google/android/gms/internal/ads/zzfyw;

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zziev;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfza;->zza:Lcom/google/android/gms/internal/ads/zzfyw;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfyw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfyw;

    return-void
.end method
