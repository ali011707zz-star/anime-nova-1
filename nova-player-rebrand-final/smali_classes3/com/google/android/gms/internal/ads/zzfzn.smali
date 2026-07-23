.class final Lcom/google/android/gms/internal/ads/zzfzn;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field zza:Ljava/lang/Object;

.field synthetic zzb:Ljava/lang/Object;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzgaf;

.field zzd:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgaf;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzn;->zzc:Lcom/google/android/gms/internal/ads/zzgaf;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzn;->zzb:Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfzn;->zzd:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfzn;->zzd:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzn;->zzc:Lcom/google/android/gms/internal/ads/zzgaf;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgaf;->zzp(Lcom/google/android/gms/internal/ads/zzgaf;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
