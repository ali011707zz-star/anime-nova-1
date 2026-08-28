package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzbk extends zzaw {
    public zzbk() {
        this.zza.add(zzbl.ASSIGN);
        this.zza.add(zzbl.CONST);
        this.zza.add(zzbl.CREATE_ARRAY);
        this.zza.add(zzbl.CREATE_OBJECT);
        this.zza.add(zzbl.EXPRESSION_LIST);
        this.zza.add(zzbl.GET);
        this.zza.add(zzbl.GET_INDEX);
        this.zza.add(zzbl.GET_PROPERTY);
        this.zza.add(zzbl.NULL);
        this.zza.add(zzbl.SET_PROPERTY);
        this.zza.add(zzbl.TYPEOF);
        this.zza.add(zzbl.UNDEFINED);
        this.zza.add(zzbl.VAR);
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap zza(String str, zzg zzgVar, List<zzap> list) {
        String str2;
        zzbl zzblVar = zzbl.ADD;
        int ordinal = zzh.zze(str).ordinal();
        int i10 = 0;
        if (ordinal == 3) {
            zzh.zzh(zzbl.ASSIGN.name(), 2, list);
            zzap zzb = zzgVar.zzb(list.get(0));
            if (zzb instanceof zzat) {
                if (zzgVar.zzh(zzb.zzi())) {
                    zzap zzb2 = zzgVar.zzb(list.get(1));
                    zzgVar.zzg(zzb.zzi(), zzb2);
                    return zzb2;
                }
                throw new IllegalArgumentException(String.format("Attempting to assign undefined value %s", zzb.zzi()));
            }
            throw new IllegalArgumentException(String.format("Expected string for assign var. got %s", zzb.getClass().getCanonicalName()));
        }
        if (ordinal == 14) {
            zzh.zzi(zzbl.CONST.name(), 2, list);
            if (list.size() % 2 == 0) {
                for (int i11 = 0; i11 < list.size() - 1; i11 += 2) {
                    zzap zzb3 = zzgVar.zzb(list.get(i11));
                    if (zzb3 instanceof zzat) {
                        zzgVar.zzf(zzb3.zzi(), zzgVar.zzb(list.get(i11 + 1)));
                    } else {
                        throw new IllegalArgumentException(String.format("Expected string for const name. got %s", zzb3.getClass().getCanonicalName()));
                    }
                }
                return zzap.zzf;
            }
            throw new IllegalArgumentException(String.format("CONST requires an even number of arguments, found %s", Integer.valueOf(list.size())));
        }
        if (ordinal == 24) {
            zzh.zzi(zzbl.EXPRESSION_LIST.name(), 1, list);
            zzap zzapVar = zzap.zzf;
            while (i10 < list.size()) {
                zzapVar = zzgVar.zzb(list.get(i10));
                if (zzapVar instanceof zzag) {
                    throw new IllegalStateException("ControlValue cannot be in an expression list");
                }
                i10++;
            }
            return zzapVar;
        }
        if (ordinal == 33) {
            zzh.zzh(zzbl.GET.name(), 1, list);
            zzap zzb4 = zzgVar.zzb(list.get(0));
            if (zzb4 instanceof zzat) {
                return zzgVar.zzd(zzb4.zzi());
            }
            throw new IllegalArgumentException(String.format("Expected string for get var. got %s", zzb4.getClass().getCanonicalName()));
        }
        if (ordinal == 49) {
            zzh.zzh(zzbl.NULL.name(), 0, list);
            return zzap.zzg;
        }
        if (ordinal == 58) {
            zzh.zzh(zzbl.SET_PROPERTY.name(), 3, list);
            zzap zzb5 = zzgVar.zzb(list.get(0));
            zzap zzb6 = zzgVar.zzb(list.get(1));
            zzap zzb7 = zzgVar.zzb(list.get(2));
            if (zzb5 != zzap.zzf && zzb5 != zzap.zzg) {
                if ((zzb5 instanceof zzae) && (zzb6 instanceof zzah)) {
                    ((zzae) zzb5).zzq(zzb6.zzh().intValue(), zzb7);
                } else if (zzb5 instanceof zzal) {
                    ((zzal) zzb5).zzr(zzb6.zzi(), zzb7);
                }
                return zzb7;
            }
            throw new IllegalStateException(String.format("Can't set property %s of %s", zzb6.zzi(), zzb5.zzi()));
        }
        if (ordinal == 17) {
            if (list.isEmpty()) {
                return new zzae();
            }
            zzae zzaeVar = new zzae();
            Iterator<zzap> it2 = list.iterator();
            while (it2.hasNext()) {
                zzap zzb8 = zzgVar.zzb(it2.next());
                if (!(zzb8 instanceof zzag)) {
                    zzaeVar.zzq(i10, zzb8);
                    i10++;
                } else {
                    throw new IllegalStateException("Failed to evaluate array element");
                }
            }
            return zzaeVar;
        }
        if (ordinal == 18) {
            if (list.isEmpty()) {
                return new zzam();
            }
            if (list.size() % 2 == 0) {
                zzam zzamVar = new zzam();
                while (i10 < list.size() - 1) {
                    zzap zzb9 = zzgVar.zzb(list.get(i10));
                    zzap zzb10 = zzgVar.zzb(list.get(i10 + 1));
                    if (!(zzb9 instanceof zzag) && !(zzb10 instanceof zzag)) {
                        zzamVar.zzr(zzb9.zzi(), zzb10);
                        i10 += 2;
                    } else {
                        throw new IllegalStateException("Failed to evaluate map entry");
                    }
                }
                return zzamVar;
            }
            throw new IllegalArgumentException(String.format("CREATE_OBJECT requires an even number of arguments, found %s", Integer.valueOf(list.size())));
        }
        if (ordinal != 35 && ordinal != 36) {
            switch (ordinal) {
                case 62:
                    zzh.zzh(zzbl.TYPEOF.name(), 1, list);
                    zzap zzb11 = zzgVar.zzb(list.get(0));
                    if (zzb11 instanceof zzau) {
                        str2 = "undefined";
                    } else if (zzb11 instanceof zzaf) {
                        str2 = "boolean";
                    } else if (zzb11 instanceof zzah) {
                        str2 = "number";
                    } else if (zzb11 instanceof zzat) {
                        str2 = "string";
                    } else if (zzb11 instanceof zzao) {
                        str2 = "function";
                    } else {
                        if ((zzb11 instanceof zzaq) || (zzb11 instanceof zzag)) {
                            throw new IllegalArgumentException(String.format("Unsupported value type %s in typeof", zzb11));
                        }
                        str2 = "object";
                    }
                    return new zzat(str2);
                case 63:
                    zzh.zzh(zzbl.UNDEFINED.name(), 0, list);
                    return zzap.zzf;
                case 64:
                    zzh.zzi(zzbl.VAR.name(), 1, list);
                    Iterator<zzap> it3 = list.iterator();
                    while (it3.hasNext()) {
                        zzap zzb12 = zzgVar.zzb(it3.next());
                        if (zzb12 instanceof zzat) {
                            zzgVar.zze(zzb12.zzi(), zzap.zzf);
                        } else {
                            throw new IllegalArgumentException(String.format("Expected string for var name. got %s", zzb12.getClass().getCanonicalName()));
                        }
                    }
                    return zzap.zzf;
                default:
                    return super.zzb(str);
            }
        }
        zzh.zzh(zzbl.GET_PROPERTY.name(), 2, list);
        zzap zzb13 = zzgVar.zzb(list.get(0));
        zzap zzb14 = zzgVar.zzb(list.get(1));
        if ((zzb13 instanceof zzae) && zzh.zzk(zzb14)) {
            return ((zzae) zzb13).zze(zzb14.zzh().intValue());
        }
        if (zzb13 instanceof zzal) {
            return ((zzal) zzb13).zzf(zzb14.zzi());
        }
        if (zzb13 instanceof zzat) {
            if ("length".equals(zzb14.zzi())) {
                return new zzah(Double.valueOf(zzb13.zzi().length()));
            }
            if (zzh.zzk(zzb14) && zzb14.zzh().doubleValue() < zzb13.zzi().length()) {
                return new zzat(String.valueOf(zzb13.zzi().charAt(zzb14.zzh().intValue())));
            }
        }
        return zzap.zzf;
    }
}
