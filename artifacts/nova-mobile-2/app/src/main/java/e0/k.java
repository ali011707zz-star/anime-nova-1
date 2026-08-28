package e0;

import android.app.Notification;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.graphics.drawable.IconCompat;
import e0.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: NotificationCompatBuilder.java */
/* loaded from: classes.dex */
public class k implements i {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5906a;

    /* renamed from: b, reason: collision with root package name */
    public final Notification.Builder f5907b;

    /* renamed from: c, reason: collision with root package name */
    public final j.e f5908c;

    /* renamed from: d, reason: collision with root package name */
    public RemoteViews f5909d;

    /* renamed from: e, reason: collision with root package name */
    public RemoteViews f5910e;

    /* renamed from: f, reason: collision with root package name */
    public final List<Bundle> f5911f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final Bundle f5912g = new Bundle();

    /* renamed from: h, reason: collision with root package name */
    public int f5913h;

    /* renamed from: i, reason: collision with root package name */
    public RemoteViews f5914i;

    public k(j.e eVar) {
        int i10;
        Icon icon;
        List list;
        List<String> e10;
        this.f5908c = eVar;
        this.f5906a = eVar.f5876a;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 26) {
            this.f5907b = new Notification.Builder(eVar.f5876a, eVar.K);
        } else {
            this.f5907b = new Notification.Builder(eVar.f5876a);
        }
        Notification notification = eVar.S;
        this.f5907b.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, eVar.f5884i).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(eVar.f5880e).setContentText(eVar.f5881f).setContentInfo(eVar.f5886k).setContentIntent(eVar.f5882g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(eVar.f5883h, (notification.flags & 128) != 0).setLargeIcon(eVar.f5885j).setNumber(eVar.f5887l).setProgress(eVar.f5895t, eVar.f5896u, eVar.f5897v);
        if (i11 < 21) {
            this.f5907b.setSound(notification.sound, notification.audioStreamType);
        }
        if (i11 >= 16) {
            this.f5907b.setSubText(eVar.f5892q).setUsesChronometer(eVar.f5890o).setPriority(eVar.f5888m);
            Iterator<j.a> it2 = eVar.f5877b.iterator();
            while (it2.hasNext()) {
                b(it2.next());
            }
            Bundle bundle = eVar.D;
            if (bundle != null) {
                this.f5912g.putAll(bundle);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (eVar.f5901z) {
                    this.f5912g.putBoolean("android.support.localOnly", true);
                }
                String str = eVar.f5898w;
                if (str != null) {
                    this.f5912g.putString("android.support.groupKey", str);
                    if (eVar.f5899x) {
                        this.f5912g.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f5912g.putBoolean("android.support.useSideChannel", true);
                    }
                }
                String str2 = eVar.f5900y;
                if (str2 != null) {
                    this.f5912g.putString("android.support.sortKey", str2);
                }
            }
            this.f5909d = eVar.H;
            this.f5910e = eVar.I;
        }
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 17) {
            this.f5907b.setShowWhen(eVar.f5889n);
        }
        if (i12 >= 19 && i12 < 21 && (e10 = e(g(eVar.f5878c), eVar.V)) != null && !e10.isEmpty()) {
            this.f5912g.putStringArray("android.people", (String[]) e10.toArray(new String[e10.size()]));
        }
        if (i12 >= 20) {
            this.f5907b.setLocalOnly(eVar.f5901z).setGroup(eVar.f5898w).setGroupSummary(eVar.f5899x).setSortKey(eVar.f5900y);
            this.f5913h = eVar.O;
        }
        if (i12 >= 21) {
            this.f5907b.setCategory(eVar.C).setColor(eVar.E).setVisibility(eVar.F).setPublicVersion(eVar.G).setSound(notification.sound, notification.audioAttributes);
            if (i12 < 28) {
                list = e(g(eVar.f5878c), eVar.V);
            } else {
                list = eVar.V;
            }
            if (list != null && !list.isEmpty()) {
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    this.f5907b.addPerson((String) it3.next());
                }
            }
            this.f5914i = eVar.J;
            if (eVar.f5879d.size() > 0) {
                Bundle bundle2 = eVar.c().getBundle("android.car.EXTENSIONS");
                bundle2 = bundle2 == null ? new Bundle() : bundle2;
                Bundle bundle3 = new Bundle(bundle2);
                Bundle bundle4 = new Bundle();
                for (int i13 = 0; i13 < eVar.f5879d.size(); i13++) {
                    bundle4.putBundle(Integer.toString(i13), l.b(eVar.f5879d.get(i13)));
                }
                bundle2.putBundle("invisible_actions", bundle4);
                bundle3.putBundle("invisible_actions", bundle4);
                eVar.c().putBundle("android.car.EXTENSIONS", bundle2);
                this.f5912g.putBundle("android.car.EXTENSIONS", bundle3);
            }
        }
        int i14 = Build.VERSION.SDK_INT;
        if (i14 >= 23 && (icon = eVar.U) != null) {
            this.f5907b.setSmallIcon(icon);
        }
        if (i14 >= 24) {
            this.f5907b.setExtras(eVar.D).setRemoteInputHistory(eVar.f5894s);
            RemoteViews remoteViews = eVar.H;
            if (remoteViews != null) {
                this.f5907b.setCustomContentView(remoteViews);
            }
            RemoteViews remoteViews2 = eVar.I;
            if (remoteViews2 != null) {
                this.f5907b.setCustomBigContentView(remoteViews2);
            }
            RemoteViews remoteViews3 = eVar.J;
            if (remoteViews3 != null) {
                this.f5907b.setCustomHeadsUpContentView(remoteViews3);
            }
        }
        if (i14 >= 26) {
            this.f5907b.setBadgeIconType(eVar.L).setSettingsText(eVar.f5893r).setShortcutId(eVar.M).setTimeoutAfter(eVar.N).setGroupAlertBehavior(eVar.O);
            if (eVar.B) {
                this.f5907b.setColorized(eVar.A);
            }
            if (!TextUtils.isEmpty(eVar.K)) {
                this.f5907b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (i14 >= 28) {
            Iterator<m> it4 = eVar.f5878c.iterator();
            while (it4.hasNext()) {
                this.f5907b.addPerson(it4.next().h());
            }
        }
        int i15 = Build.VERSION.SDK_INT;
        if (i15 >= 29) {
            this.f5907b.setAllowSystemGeneratedContextualActions(eVar.Q);
            this.f5907b.setBubbleMetadata(j.d.a(eVar.R));
        }
        if (m0.a.c() && (i10 = eVar.P) != 0) {
            this.f5907b.setForegroundServiceBehavior(i10);
        }
        if (eVar.T) {
            if (this.f5908c.f5899x) {
                this.f5913h = 2;
            } else {
                this.f5913h = 1;
            }
            this.f5907b.setVibrate(null);
            this.f5907b.setSound(null);
            int i16 = notification.defaults & (-2);
            notification.defaults = i16;
            int i17 = i16 & (-3);
            notification.defaults = i17;
            this.f5907b.setDefaults(i17);
            if (i15 >= 26) {
                if (TextUtils.isEmpty(this.f5908c.f5898w)) {
                    this.f5907b.setGroup("silent");
                }
                this.f5907b.setGroupAlertBehavior(this.f5913h);
            }
        }
    }

    public static List<String> e(List<String> list, List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        s.b bVar = new s.b(list.size() + list2.size());
        bVar.addAll(list);
        bVar.addAll(list2);
        return new ArrayList(bVar);
    }

    public static List<String> g(List<m> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<m> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().g());
        }
        return arrayList;
    }

    @Override // e0.i
    public Notification.Builder a() {
        return this.f5907b;
    }

    public final void b(j.a aVar) {
        Notification.Action.Builder builder;
        Bundle bundle;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 20) {
            if (i10 >= 16) {
                this.f5911f.add(l.f(this.f5907b, aVar));
                return;
            }
            return;
        }
        IconCompat e10 = aVar.e();
        if (i10 >= 23) {
            builder = new Notification.Action.Builder(e10 != null ? e10.p() : null, aVar.i(), aVar.a());
        } else {
            builder = new Notification.Action.Builder(e10 != null ? e10.e() : 0, aVar.i(), aVar.a());
        }
        if (aVar.f() != null) {
            for (RemoteInput remoteInput : n.b(aVar.f())) {
                builder.addRemoteInput(remoteInput);
            }
        }
        if (aVar.d() != null) {
            bundle = new Bundle(aVar.d());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", aVar.b());
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 24) {
            builder.setAllowGeneratedReplies(aVar.b());
        }
        bundle.putInt("android.support.action.semanticAction", aVar.g());
        if (i11 >= 28) {
            builder.setSemanticAction(aVar.g());
        }
        if (i11 >= 29) {
            builder.setContextual(aVar.j());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", aVar.h());
        builder.addExtras(bundle);
        this.f5907b.addAction(builder.build());
    }

    public Notification c() {
        Bundle a10;
        RemoteViews f10;
        RemoteViews d10;
        j.f fVar = this.f5908c.f5891p;
        if (fVar != null) {
            fVar.b(this);
        }
        RemoteViews e10 = fVar != null ? fVar.e(this) : null;
        Notification d11 = d();
        if (e10 != null) {
            d11.contentView = e10;
        } else {
            RemoteViews remoteViews = this.f5908c.H;
            if (remoteViews != null) {
                d11.contentView = remoteViews;
            }
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 16 && fVar != null && (d10 = fVar.d(this)) != null) {
            d11.bigContentView = d10;
        }
        if (i10 >= 21 && fVar != null && (f10 = this.f5908c.f5891p.f(this)) != null) {
            d11.headsUpContentView = f10;
        }
        if (i10 >= 16 && fVar != null && (a10 = j.a(d11)) != null) {
            fVar.a(a10);
        }
        return d11;
    }

    public Notification d() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            return this.f5907b.build();
        }
        if (i10 >= 24) {
            Notification build = this.f5907b.build();
            if (this.f5913h != 0) {
                if (build.getGroup() != null && (build.flags & 512) != 0 && this.f5913h == 2) {
                    h(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && this.f5913h == 1) {
                    h(build);
                }
            }
            return build;
        }
        if (i10 >= 21) {
            this.f5907b.setExtras(this.f5912g);
            Notification build2 = this.f5907b.build();
            RemoteViews remoteViews = this.f5909d;
            if (remoteViews != null) {
                build2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.f5910e;
            if (remoteViews2 != null) {
                build2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.f5914i;
            if (remoteViews3 != null) {
                build2.headsUpContentView = remoteViews3;
            }
            if (this.f5913h != 0) {
                if (build2.getGroup() != null && (build2.flags & 512) != 0 && this.f5913h == 2) {
                    h(build2);
                }
                if (build2.getGroup() != null && (build2.flags & 512) == 0 && this.f5913h == 1) {
                    h(build2);
                }
            }
            return build2;
        }
        if (i10 >= 20) {
            this.f5907b.setExtras(this.f5912g);
            Notification build3 = this.f5907b.build();
            RemoteViews remoteViews4 = this.f5909d;
            if (remoteViews4 != null) {
                build3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.f5910e;
            if (remoteViews5 != null) {
                build3.bigContentView = remoteViews5;
            }
            if (this.f5913h != 0) {
                if (build3.getGroup() != null && (build3.flags & 512) != 0 && this.f5913h == 2) {
                    h(build3);
                }
                if (build3.getGroup() != null && (build3.flags & 512) == 0 && this.f5913h == 1) {
                    h(build3);
                }
            }
            return build3;
        }
        if (i10 >= 19) {
            SparseArray<Bundle> a10 = l.a(this.f5911f);
            if (a10 != null) {
                this.f5912g.putSparseParcelableArray("android.support.actionExtras", a10);
            }
            this.f5907b.setExtras(this.f5912g);
            Notification build4 = this.f5907b.build();
            RemoteViews remoteViews6 = this.f5909d;
            if (remoteViews6 != null) {
                build4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.f5910e;
            if (remoteViews7 != null) {
                build4.bigContentView = remoteViews7;
            }
            return build4;
        }
        if (i10 >= 16) {
            Notification build5 = this.f5907b.build();
            Bundle a11 = j.a(build5);
            Bundle bundle = new Bundle(this.f5912g);
            for (String str : this.f5912g.keySet()) {
                if (a11.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            a11.putAll(bundle);
            SparseArray<Bundle> a12 = l.a(this.f5911f);
            if (a12 != null) {
                j.a(build5).putSparseParcelableArray("android.support.actionExtras", a12);
            }
            RemoteViews remoteViews8 = this.f5909d;
            if (remoteViews8 != null) {
                build5.contentView = remoteViews8;
            }
            RemoteViews remoteViews9 = this.f5910e;
            if (remoteViews9 != null) {
                build5.bigContentView = remoteViews9;
            }
            return build5;
        }
        return this.f5907b.getNotification();
    }

    public Context f() {
        return this.f5906a;
    }

    public final void h(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        int i10 = notification.defaults & (-2);
        notification.defaults = i10;
        notification.defaults = i10 & (-3);
    }
}
