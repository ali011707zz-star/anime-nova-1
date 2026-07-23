.class final Lcom/google/android/gms/internal/ads/zzfzm;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field zza:J

.field zzb:Ljava/lang/Object;

.field synthetic zzc:Ljava/lang/Object;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzgaf;

.field zze:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgaf;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzm;->zzd:Lcom/google/android/gms/internal/ads/zzgaf;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzm;->zzc:Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfzm;->zze:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfzm;->zze:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzm;->zzd:Lcom/google/android/gms/internal/ads/zzgaf;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgaf;->zzq(Lcom/google/android/gms/internal/ads/zzgaf;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
