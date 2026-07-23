.class final synthetic Lcom/google/android/gms/internal/ads/zzbrz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrf;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsl;

.field private final synthetic zzb:Ljava/util/ArrayList;

.field private final synthetic zzc:J

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbsk;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzbrg;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbsl;Ljava/util/ArrayList;JLcom/google/android/gms/internal/ads/zzbsk;Lcom/google/android/gms/internal/ads/zzbrg;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrz;->zza:Lcom/google/android/gms/internal/ads/zzbsl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbrz;->zzb:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbrz;->zzc:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbrz;->zzd:Lcom/google/android/gms/internal/ads/zzbsk;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbrz;->zze:Lcom/google/android/gms/internal/ads/zzbrg;

    return-void
.end method


# virtual methods
.method public final synthetic zza()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzbrz;->zzc:J

    sub-long/2addr v0, v7

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbrz;->zzb:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x34

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoadNewJavascriptEngine(onEngLoaded) latency is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ms."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfyn;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbsa;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbrz;->zza:Lcom/google/android/gms/internal/ads/zzbsl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbrz;->zzd:Lcom/google/android/gms/internal/ads/zzbsk;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbrz;->zze:Lcom/google/android/gms/internal/ads/zzbrg;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzbsa;-><init>(Lcom/google/android/gms/internal/ads/zzbsl;Lcom/google/android/gms/internal/ads/zzbsk;Lcom/google/android/gms/internal/ads/zzbrg;Ljava/util/ArrayList;J)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzd:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    .line 5
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
