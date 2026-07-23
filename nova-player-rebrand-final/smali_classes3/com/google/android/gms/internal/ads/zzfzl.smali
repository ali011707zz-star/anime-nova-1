.class final Lcom/google/android/gms/internal/ads/zzfzl;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzl;->zzb:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzl;->zzb:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfzl;->zza:Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfyy;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfzl;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzl;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfzl;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzl;->zza:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfyy;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibr;->zzbp()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfyw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfyz;->zza(Lcom/google/android/gms/internal/ads/zzfyw;)Lcom/google/android/gms/internal/ads/zzfza;

    move-result-object p1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfza;->zzb()Lcom/google/android/gms/internal/ads/zziev;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzl;->zzb:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfza;->zzd(Lcom/google/android/gms/internal/ads/zziev;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfza;->zza()Lcom/google/android/gms/internal/ads/zzfyy;

    move-result-object p1

    return-object p1
.end method
