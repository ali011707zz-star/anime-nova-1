.class public final Lcom/google/android/gms/internal/ads/zzps;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzps;

.field static final zzb:Lcom/google/android/gms/internal/ads/zzgui;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzguf;


# instance fields
.field private final zzd:Landroid/util/SparseArray;

.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzps;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzpr;->zza:Lcom/google/android/gms/internal/ads/zzpr;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzps;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzps;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzguf;->zzl(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzps;->zzc:Lcom/google/android/gms/internal/ads/zzguf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzguh;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzguh;-><init>()V

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzguh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguh;

    const/16 v1, 0x11

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzguh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguh;

    const/4 v1, 0x7

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzguh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguh;

    const/16 v1, 0x1e

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzguh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguh;

    const/16 v1, 0x12

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzguh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguh;

    const/16 v1, 0x8

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzguh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguh;

    .line 12
    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzguh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguh;

    const/16 v2, 0xe

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzguh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguh;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguh;->zzc()Lcom/google/android/gms/internal/ads/zzgui;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zzgui;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzpr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:Landroid/util/SparseArray;

    .line 4
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzpr;->zzb:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzpr;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzpr;->zzc:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zze:I

    return-void
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzd;Landroid/media/AudioDeviceInfo;)Lcom/google/android/gms/internal/ads/zzps;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzps;->zzb(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zzd;Landroid/media/AudioDeviceInfo;)Lcom/google/android/gms/internal/ads/zzps;

    move-result-object p0

    return-object p0
.end method

.method static zzb(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zzd;Landroid/media/AudioDeviceInfo;)Lcom/google/android/gms/internal/ads/zzps;
    .locals 11

    const/4 v0, 0x2

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcj;->zza(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v2

    const/16 v3, 0x21

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    if-lt p3, v3, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzd;->zza()Landroid/media/AudioAttributes;

    move-result-object p3

    invoke-static {v2, p3}, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api33$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object p3

    .line 4
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move-object p3, v5

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioDeviceInfo;

    .line 1
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    const/4 v7, 0x1

    if-lt v5, v3, :cond_a

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzM(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzN(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 46
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzd;->zza()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api33$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzps;

    new-instance p2, Ljava/util/HashMap;

    .line 47
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 48
    new-instance p3, Ljava/util/HashSet;

    filled-new-array {v6}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxz;->zzg([I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge v4, p3, :cond_8

    .line 50
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Landroidx/media3/exoplayer/audio/AudioCapabilities$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/AudioProfile;

    move-result-object p3

    .line 51
    invoke-static {p3}, Landroidx/media3/exoplayer/audio/AudioCapabilities$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioProfile;)I

    move-result v0

    if-ne v0, v7, :cond_4

    goto :goto_2

    .line 52
    :cond_4
    invoke-static {p3}, Landroidx/media3/exoplayer/audio/AudioCapabilities$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/AudioProfile;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzA(I)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zzgui;

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgui;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 54
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 55
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {p3}, Landroidx/media3/exoplayer/audio/AudioCapabilities$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/AudioProfile;)[I

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgxz;->zzg([I)Ljava/util/List;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/util/HashSet;

    .line 57
    invoke-static {p3}, Landroidx/media3/exoplayer/audio/AudioCapabilities$$ExternalSyntheticApiModelOutline3;->m(Landroid/media/AudioProfile;)[I

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgxz;->zzg([I)Ljava/util/List;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 60
    :cond_8
    sget p0, Lcom/google/android/gms/internal/ads/zzguf;->$r8$clinit:I

    new-instance p0, Lcom/google/android/gms/internal/ads/zzguc;

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzguc;-><init>()V

    .line 62
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 63
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpr;

    .line 64
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    invoke-direct {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzpr;-><init>(ILjava/util/Set;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    goto :goto_3

    .line 65
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p0

    .line 66
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzps;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_a
    if-nez p3, :cond_b

    .line 7
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p3

    goto :goto_4

    .line 26
    :cond_b
    new-array v2, v7, [Landroid/media/AudioDeviceInfo;

    aput-object p3, v2, v4

    move-object p3, v2

    .line 7
    :goto_4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzguo;

    .line 8
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzguo;-><init>()V

    const/16 v8, 0x8

    .line 9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v0, [Ljava/lang/Integer;

    aput-object v8, v10, v4

    aput-object v9, v10, v7

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzguo;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguo;

    const/16 v8, 0x1f

    if-lt v5, v8, :cond_c

    const/16 v8, 0x1a

    .line 10
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x1b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v8, v0, v4

    aput-object v9, v0, v7

    .line 11
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzguo;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguo;

    :cond_c
    if-lt v5, v3, :cond_d

    const/16 v0, 0x1e

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzguo;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguo;

    .line 13
    :cond_d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzguo;->zzi()Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object v0

    .line 14
    array-length v2, p3

    move v3, v4

    :goto_5
    if-ge v3, v2, :cond_f

    aget-object v5, p3, v3

    .line 15
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzgub;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzps;

    return-object p0

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_f
    new-instance p3, Lcom/google/android/gms/internal/ads/zzguo;

    .line 16
    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzguo;-><init>()V

    .line 17
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzguo;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguo;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const/16 v3, 0xa

    if-lt v0, v2, :cond_13

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzM(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzN(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 32
    :cond_10
    sget p0, Lcom/google/android/gms/internal/ads/zzguf;->$r8$clinit:I

    new-instance p0, Lcom/google/android/gms/internal/ads/zzguc;

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzguc;-><init>()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zzgui;

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgui;->zzf()Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgup;->zza()Lcom/google/android/gms/internal/ads/zzgwt;

    move-result-object p1

    :cond_11
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzC(I)I

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_11

    .line 35
    new-instance v4, Landroid/media/AudioFormat$Builder;

    invoke-direct {v4}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 36
    invoke-virtual {v4, v6}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    .line 37
    invoke-virtual {v4, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const v4, 0xbb80

    .line 38
    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 40
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzd;->zza()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 35
    invoke-static {v2, v4}, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api29$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    goto :goto_6

    .line 42
    :cond_12
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p0

    .line 44
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzguo;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzguo;

    new-instance p0, Lcom/google/android/gms/internal/ads/zzps;

    .line 45
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzguo;->zzi()Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgxz;->zzf(Ljava/util/Collection;)[I

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzps;->zzf([II)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzps;-><init>(Ljava/util/List;)V

    return-object p0

    .line 19
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "use_external_surround_sound_flag"

    .line 20
    invoke-static {p0, p2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v7, :cond_14

    move p2, v7

    goto :goto_7

    :cond_14
    move p2, v4

    :goto_7
    if-nez p2, :cond_15

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzps;->zze()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    const-string v0, "external_surround_sound_enabled"

    .line 22
    invoke-static {p0, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v7, :cond_16

    sget-object p0, Lcom/google/android/gms/internal/ads/zzps;->zzc:Lcom/google/android/gms/internal/ads/zzguf;

    .line 23
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzguo;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzguo;

    :cond_16
    if-eqz p1, :cond_18

    if-nez p2, :cond_18

    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    .line 24
    invoke-virtual {p1, p0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v7, :cond_18

    const-string p0, "android.media.extra.ENCODINGS"

    .line 27
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p0

    if-eqz p0, :cond_17

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgxz;->zzg([I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzguo;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzguo;

    :cond_17
    new-instance p0, Lcom/google/android/gms/internal/ads/zzps;

    .line 29
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzguo;->zzi()Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgxz;->zzf(Ljava/util/Collection;)[I

    move-result-object p2

    const-string p3, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 30
    invoke-virtual {p1, p3, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 31
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzps;->zzf([II)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzps;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_18
    new-instance p0, Lcom/google/android/gms/internal/ads/zzps;

    .line 25
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzguo;->zzi()Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgxz;->zzf(Ljava/util/Collection;)[I

    move-result-object p1

    .line 26
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzps;->zzf([II)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzps;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method static zzc()Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzps;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external_surround_sound_enabled"

    .line 2
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static zze()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static zzf([II)Lcom/google/android/gms/internal/ads/zzguf;
    .locals 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzguf;->$r8$clinit:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzguc;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzguc;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array p0, v1, [I

    :cond_0
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3
    aget v2, p0, v1

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/ads/zzpr;

    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/internal/ads/zzpr;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzps;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzps;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:Landroid/util/SparseArray;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzps;->zzd:Landroid/util/SparseArray;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_2

    .line 3
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util$$ExternalSyntheticApiModelOutline4;->m(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ne v4, v5, :cond_4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    .line 6
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 7
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzps;->zze:I

    .line 2
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzps;->zze:I

    if-ne v1, p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:Landroid/util/SparseArray;

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    .line 5
    invoke-static {v1}, Landroidx/media3/common/util/Util$$ExternalSyntheticApiModelOutline0;->m(Landroid/util/SparseArray;)I

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x11

    .line 2
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 3
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    add-int/2addr v3, v4

    mul-int/2addr v3, v2

    .line 4
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 5
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzps;->zze:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzps;->zze:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v2, 0x32

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioProfiles="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzd;)Landroid/util/Pair;
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzk:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzas;->zzg(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zzgui;

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgui;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x7

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/16 v5, 0x12

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:Landroid/util/SparseArray;

    .line 3
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zza(Landroid/util/SparseArray;I)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_2

    :cond_1
    move v1, v5

    :cond_2
    if-ne v1, v3, :cond_4

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:Landroid/util/SparseArray;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zza(Landroid/util/SparseArray;I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v6, 0x1e

    if-ne v1, v6, :cond_5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:Landroid/util/SparseArray;

    .line 5
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzfj;->zza(Landroid/util/SparseArray;I)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    .line 3
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:Landroid/util/SparseArray;

    .line 6
    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zza(Landroid/util/SparseArray;I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 7
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzpr;

    .line 13
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget v7, p1, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    if-ne v1, v5, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    const-string p1, "audio/vnd.dts.uhd;profile=p2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-ge p1, p2, :cond_7

    const/16 p1, 0xa

    if-le v7, p1, :cond_a

    goto :goto_5

    .line 11
    :cond_7
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzpr;->zza(I)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_5

    .line 9
    :cond_8
    :goto_3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    if-ne p1, v8, :cond_9

    const p1, 0xbb80

    .line 10
    :cond_9
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/zzpr;->zzb(ILcom/google/android/gms/internal/ads/zzd;)I

    move-result v7

    :cond_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-gt p1, p2, :cond_d

    if-ne v7, v2, :cond_b

    goto :goto_4

    :cond_b
    const/4 p2, 0x3

    if-eq v7, p2, :cond_c

    const/4 p2, 0x4

    if-eq v7, p2, :cond_c

    const/4 p2, 0x5

    if-ne v7, p2, :cond_d

    :cond_c
    move v3, v4

    goto :goto_4

    :cond_d
    move v3, v7

    :goto_4
    const/16 p2, 0x1a

    if-gt p1, p2, :cond_e

    const-string p1, "fugu"

    sget-object p2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    if-ne v3, p1, :cond_e

    const/4 v3, 0x2

    :cond_e
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzB(I)I

    move-result p1

    if-eqz p1, :cond_f

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_f
    :goto_5
    const/4 p1, 0x0

    return-object p1
.end method
