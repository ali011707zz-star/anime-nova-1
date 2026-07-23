.class final Lcom/google/android/gms/internal/ads/zzfzu;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field zza:I

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgaf;

.field final synthetic zzc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgaf;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzu;->zzb:Lcom/google/android/gms/internal/ads/zzgaf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfzu;->zzc:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfzu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzu;->zzb:Lcom/google/android/gms/internal/ads/zzgaf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzu;->zzc:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzfzu;-><init>(Lcom/google/android/gms/internal/ads/zzgaf;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfzu;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzu;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfzu;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfzu;->zza:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzu;->zzb:Lcom/google/android/gms/internal/ads/zzgaf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzu;->zzc:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfzu;->zza:I

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzgaf;->zzi(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
