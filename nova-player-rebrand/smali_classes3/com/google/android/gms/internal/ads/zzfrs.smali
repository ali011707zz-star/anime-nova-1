.class final Lcom/google/android/gms/internal/ads/zzfrs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzea;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfsa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsa;JLcom/google/android/gms/ads/internal/client/zzea;)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzfrs;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfrs;->zzb:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrs;->zzc:Lcom/google/android/gms/internal/ads/zzfsa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrs;->zzc:Lcom/google/android/gms/internal/ads/zzfsa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzI()Lcom/google/android/gms/internal/ads/zzfrf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzI()Lcom/google/android/gms/internal/ads/zzfrf;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfrs;->zza:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrs;->zzb:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzK()Lcom/google/android/gms/internal/ads/zzfrm;

    move-result-object v6

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfsa;->zzL(Lcom/google/android/gms/ads/internal/client/zzea;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfsa;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 2
    iget v7, v1, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzp()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfsa;->zzH()Ljava/lang/String;

    move-result-object v9

    .line 4
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzfrf;->zzi(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzfrm;IILjava/lang/String;)V

    :cond_0
    return-void
.end method
