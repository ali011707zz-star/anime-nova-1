.class public final Lcom/google/android/gms/internal/ads/zzfad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfax;


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzfae;


# instance fields
.field final zza:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zze:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzeqk;

.field private final zzg:Landroid/content/Context;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzeqf;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdvp;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzeam;

.field private final zzl:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfae;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfae;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfad;->zzc:Lcom/google/android/gms/internal/ads/zzfae;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgzy;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeqk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzeqf;Lcom/google/android/gms/internal/ads/zzdvp;Lcom/google/android/gms/internal/ads/zzeam;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzd:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfad;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfad;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzf:Lcom/google/android/gms/internal/ads/zzeqk;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzg:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzh:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzi:Lcom/google/android/gms/internal/ads/zzeqf;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzj:Lcom/google/android/gms/internal/ads/zzdvp;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzk:Lcom/google/android/gms/internal/ads/zzeam;

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzl:I

    return-void
.end method

.method private final zzf(Ljava/util/List;Ljava/util/Map;)V
    .locals 7

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeqo;

    .line 3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeqo;->zza:Ljava/lang/String;

    .line 4
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzfad;->zzg(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeqo;->zze:Landroid/os/Bundle;

    .line 6
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzeqo;->zzb:Z

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzeqo;->zzc:Z

    move-object v1, p0

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfad;->zzh(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzg(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzh:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzh(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lcom/google/android/gms/internal/ads/zzgzg;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzezy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzezy;-><init>(Lcom/google/android/gms/internal/ads/zzfad;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)V

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzfad;->zzd:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzf(Lcom/google/android/gms/internal/ads/zzgyv;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgzg;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object p2

    .line 3
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbhe;->zzcf:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p3

    .line 3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbhe;->zzbY:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p3

    .line 6
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    iget-object p5, v1, Lcom/google/android/gms/internal/ads/zzfad;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-static {p2, p3, p4, v0, p5}, Lcom/google/android/gms/internal/ads/zzgzo;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgzg;

    :cond_0
    new-instance p3, Lcom/google/android/gms/internal/ads/zzezz;

    invoke-direct {p3, v2}, Lcom/google/android/gms/internal/ads/zzezz;-><init>(Ljava/lang/String;)V

    const-class p4, Ljava/lang/Throwable;

    .line 8
    invoke-static {p2, p4, p3, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzg;

    return-object p1
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zzbvs;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeqn;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzg:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    const/4 v0, 0x0

    .line 2
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfad;->zza:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzh:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/zzfjk;->zzf:Lcom/google/android/gms/ads/internal/client/zzr;

    move-object v1, p1

    move-object v4, p2

    move-object v7, p4

    .line 3
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbvs;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzbvv;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzl:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfad;->zzc:Lcom/google/android/gms/internal/ads/zzfae;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzh:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzs:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzcl:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfad;->zzc:Lcom/google/android/gms/internal/ads/zzfae;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfab;-><init>(Lcom/google/android/gms/internal/ads/zzfad;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzd:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzf(Lcom/google/android/gms/internal/ads/zzgyv;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    const/16 v0, 0x20

    return v0
.end method

.method final synthetic zzc()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 13

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmr:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzh:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzh:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    .line 3
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzcj:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzk:Lcom/google/android/gms/internal/ads/zzeam;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeam;->zzg()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 27
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .line 7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzfc:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcdu;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzi()Lcom/google/android/gms/internal/ads/zzcdp;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcdp;->zzk()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const-string v2, "EMPTY"

    goto :goto_2

    .line 27
    :cond_2
    const-string v2, "INVALID"

    goto :goto_2

    :cond_3
    const-string v2, "VALID"

    goto :goto_2

    :cond_4
    const-string v2, ""

    .line 13
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzcs:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 16
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzf:Lcom/google/android/gms/internal/ads/zzeqk;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfad;->zza:Ljava/lang/String;

    .line 17
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzeqk;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 19
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    .line 20
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/util/List;

    .line 21
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzfad;->zzg(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, p0

    .line 22
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzfad;->zzh(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lcom/google/android/gms/internal/ads/zzgzg;

    move-result-object v5

    .line 23
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v7, p0

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeqk;->zzb()Ljava/util/Map;

    move-result-object v0

    .line 25
    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/internal/ads/zzfad;->zzf(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_4

    :cond_6
    move-object v7, p0

    .line 29
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzfad;->zzf:Lcom/google/android/gms/internal/ads/zzeqk;

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzfad;->zza:Ljava/lang/String;

    .line 26
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzeqk;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 27
    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/internal/ads/zzfad;->zzf(Ljava/util/List;Ljava/util/Map;)V

    .line 28
    :goto_4
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgzo;->zzp(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgzn;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzezx;

    invoke-direct {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzezx;-><init>(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzfad;->zzd:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 29
    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/internal/ads/zzgzn;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzd(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcen;

    .line 2
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzcen;-><init>()V

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    .line 3
    sget-object p5, Lcom/google/android/gms/internal/ads/zzbhe;->zzck:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p5

    .line 3
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzi:Lcom/google/android/gms/internal/ads/zzeqf;

    .line 7
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/ads/zzeqf;->zza(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/ads/zzeqf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbvs;

    move-result-object p5

    :goto_0
    move-object v2, p5

    goto :goto_1

    .line 23
    :cond_0
    :try_start_0
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzj:Lcom/google/android/gms/internal/ads/zzdvp;

    .line 5
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/ads/zzdvp;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbvs;

    move-result-object p5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p5, v0

    .line 12
    const-string v0, "Couldn\'t create RTB adapter : "

    .line 6
    invoke-static {v0, p5}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_1
    if-nez v2, :cond_2

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbhe;->zzca:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzeqn;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcen;)V

    move-object v1, p0

    goto/16 :goto_2

    .line 12
    :cond_1
    throw v1

    .line 11
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeqn;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p5

    invoke-interface {p5}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeqn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvs;Lcom/google/android/gms/internal/ads/zzcen;J)V

    .line 14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzcf:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfad;->zze:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    new-instance p5, Lcom/google/android/gms/internal/ads/zzfac;

    invoke-direct {p5, v0}, Lcom/google/android/gms/internal/ads/zzfac;-><init>(Lcom/google/android/gms/internal/ads/zzeqn;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzbY:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    invoke-interface {p1, p5, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    if-eqz p4, :cond_5

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzcm:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzd:Lcom/google/android/gms/internal/ads/zzgzy;

    move-object v5, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfaa;

    move-object v1, p0

    move-object v4, p2

    move-object v6, v3

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfaa;-><init>(Lcom/google/android/gms/internal/ads/zzfad;Lcom/google/android/gms/internal/ads/zzbvs;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeqn;Lcom/google/android/gms/internal/ads/zzcen;)V

    move-object v3, v6

    .line 21
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzy;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_2

    :cond_4
    move-object v1, p0

    move-object v4, p2

    move-object p1, p3

    .line 22
    invoke-direct {p0, v2, p1, v4, v0}, Lcom/google/android/gms/internal/ads/zzfad;->zzi(Lcom/google/android/gms/internal/ads/zzbvs;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeqn;)V

    goto :goto_2

    :cond_5
    move-object v1, p0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeqn;->zzb()V

    :goto_2
    return-object v3
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzbvs;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeqn;Lcom/google/android/gms/internal/ads/zzcen;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzfad;->zzi(Lcom/google/android/gms/internal/ads/zzbvs;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzeqn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/ads/zzcen;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method
