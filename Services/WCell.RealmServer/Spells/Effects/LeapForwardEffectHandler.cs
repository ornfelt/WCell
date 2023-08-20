using System;
using WCell.Constants.NPCs;
using WCell.Constants.Spells;
using WCell.Constants.Updates;
using WCell.RealmServer.Entities;
using WCell.RealmServer.Handlers;

namespace WCell.RealmServer.Spells.Effects
{
    public class LeapForwardEffectHandler : SpellEffectHandler
    {
		public LeapForwardEffectHandler(SpellCast cast, SpellEffect effect)
			: base(cast, effect)
		{
		}

		public override SpellFailedReason Initialize()
		{
			return base.Initialize();
		}

		public override void Apply()
		{
			var casterUnit = m_cast.CasterUnit;
            var o = casterUnit.Orientation;
			//log.Info("\n\nBlink init pos: " + casterUnit.Position + ", o: " + o + ", curr dist to ground: " + casterUnit.TerrainHeight);
            var newx = casterUnit.Position.X + (casterUnit.BoundingRadius + 20.0f) * (float)Math.Cos(o);
            var newy = casterUnit.Position.Y + (casterUnit.BoundingRadius + 20.0f) * (float)Math.Sin(o);
            var newpos = new Util.Graphics.Vector3(newx, newy, casterUnit.Position.Z);
			casterUnit.TeleportTo(newpos, o);

			// TODO: Update z according to ground level...
			//log.Info("Blink pos after: " + casterUnit.Position + ", curr dist to ground: " + casterUnit.TerrainHeight);
			//newpos.Z = casterUnit.TerrainHeight > 0.0f ? (newpos.Z - casterUnit.TerrainHeight) + 5.0f : (newpos.Z + casterUnit.TerrainHeight) + 5.0f;
			//casterUnit.TeleportTo(newpos, o);
			//log.Info("Blink pos after: " + casterUnit.Position + ", curr dist to ground: " + casterUnit.TerrainHeight);
		}
    }
}
