.class public final Lcom/google/android/gms/internal/ads/zzehz;
.super Lcom/google/android/gms/internal/ads/zzeia;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zzg:Landroid/util/SparseArray;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdaj;

.field private final zzd:Landroid/telephony/TelephonyManager;

.field private final zze:Lcom/google/android/gms/internal/ads/zzehr;

.field private zzf:Lcom/google/android/gms/internal/ads/zzbgj$zzq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzehz;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;->zzc:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;->zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;->zze:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;->zzf:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdaj;Lcom/google/android/gms/internal/ads/zzehr;Lcom/google/android/gms/internal/ads/zzehn;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p5}, Lcom/google/android/gms/internal/ads/zzeia;-><init>(Lcom/google/android/gms/internal/ads/zzehn;Lcom/google/android/gms/ads/internal/util/zzg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehz;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehz;->zzc:Lcom/google/android/gms/internal/ads/zzdaj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehz;->zze:Lcom/google/android/gms/internal/ads/zzehr;

    const-string p2, "phone"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehz;->zzd:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static final synthetic zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;
    .locals 2

    .line 1
    const-string v0, "device"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "network"

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfjz;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "active_network_state"

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzehz;->zzg:Landroid/util/SparseArray;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;

    return-object p0
.end method

.method private static final zzg(Z)Lcom/google/android/gms/internal/ads/zzbgj$zzq;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    return-object p0
.end method


# virtual methods
.method public final zza(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehz;->zzc:Lcom/google/android/gms/internal/ads/zzdaj;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdaj;->zza(Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzehy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzehy;-><init>(Lcom/google/android/gms/internal/ads/zzehz;Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final synthetic zzb(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbgj$zzab;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzab;->zzq()Lcom/google/android/gms/internal/ads/zzbgj$zzab$zza;

    move-result-object v0

    const/4 v1, -0x2

    .line 2
    const-string v2, "cnt"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    .line 3
    const-string v3, "gnt"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehz;->zzf:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    goto :goto_2

    .line 5
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgj$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzehz;->zzf:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzc;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj$zzab$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzc;)Lcom/google/android/gms/internal/ads/zzbgj$zzab$zza;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzc;->zzc:Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj$zzab$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzc;)Lcom/google/android/gms/internal/ads/zzbgj$zzab$zza;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzc;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj$zzab$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzc;)Lcom/google/android/gms/internal/ads/zzbgj$zzab$zza;

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzb;->zza:Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzb;

    goto :goto_1

    .line 9
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzb;->zzd:Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzb;

    goto :goto_1

    .line 10
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzb;->zzc:Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzb;

    goto :goto_1

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzb;

    .line 13
    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzab$zza;->zzg(Lcom/google/android/gms/internal/ads/zzbgj$zzab$zzb;)Lcom/google/android/gms/internal/ads/zzbgj$zzab$zza;

    .line 14
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj$zzab;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method final synthetic zzc(ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbgj$zzab;Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;)[B
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;->zzz()Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzv(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehz;->zzb:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4
    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 5
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzehz;->zzg(Z)Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzJ(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehz;->zzd:Landroid/telephony/TelephonyManager;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/ads/internal/util/zzz;

    move-result-object v4

    invoke-virtual {v4, p2, v1}, Lcom/google/android/gms/ads/internal/util/zzz;->zzf(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzN(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehz;->zze:Lcom/google/android/gms/internal/ads/zzehr;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzehr;->zzf()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzk(J)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzehr;->zzj()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzo(J)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzehr;->zzd()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzR(I)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    .line 11
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzZ(Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zzd;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    .line 12
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzz(Lcom/google/android/gms/internal/ads/zzbgj$zzab;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzehz;->zzf:Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    .line 13
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzV(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzehz;->zzg(Z)Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzg(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzehr;->zzb()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzad(J)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzc(J)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_on"

    .line 18
    invoke-static {p1, p2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move v3, v2

    .line 19
    :cond_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzehz;->zzg(Z)Lcom/google/android/gms/internal/ads/zzbgj$zzq;

    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;->zzF(Lcom/google/android/gms/internal/ads/zzbgj$zzq;)Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza$zza;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj$zzaf$zza;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaN()[B

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd()Lcom/google/android/gms/internal/ads/zzehr;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehz;->zze:Lcom/google/android/gms/internal/ads/zzehr;

    return-object v0
.end method
